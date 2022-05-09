; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/mISDNisar.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/mISDNisar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mISDNisar_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNisar_irq\09\09\09\09"
module asm "\09.long\09__crc_mISDNisar_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNisar_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNisar_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNisar_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDNisar_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNisar_init\09\09\09\09"
module asm "\09.long\09__crc_mISDNisar_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNisar_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNisar_init\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNisar_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.isar_hw = type { [2 x %struct.isar_ch], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, [256 x i8], [256 x i8] }
%struct.isar_ch = type { %struct.bchannel, ptr, %struct.timer_list, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8] }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }

@__UNIQUE_ID_author457 = internal constant [30 x i8] c"mISDNisar.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [53 x i8] c"mISDNisar.file=drivers/isdn/hardware/mISDN/mISDNisar\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [25 x i8] c"mISDNisar.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version460 = internal constant [22 x i8] c"mISDNisar.version=2.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mISDNisar\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@mISDNisar_irq.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mISDNisar_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/isdn/hardware/mISDN/mISDNisar.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ISAR spurious IIS_RDATA %x/%x/%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 1, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Buffer STEV dpath%d msb(%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ISAR IIS_PSTEV pm %d sta %x\0A\00", [63 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ISAR spurious IIS_PSTEV %x/%x/%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ISAR spurious IIS_PSTRSP %x/%x/%x\0A\00", [57 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid msg his:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@mISDNisar_irq.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: unhandled msg iis(%x) ctrl(%x/%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_mISDNisar_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNisar_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNisar_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNisar_irq to i32), ptr @__kstrtab_mISDNisar_irq, ptr @__kstrtabns_mISDNisar_irq }, section "___ksymtab+mISDNisar_irq", align 4
@__kstrtab_mISDNisar_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNisar_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNisar_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNisar_init to i32), ptr @__kstrtab_mISDNisar_init, ptr @__kstrtabns_mISDNisar_init }, section "___ksymtab+mISDNisar_init", align 4
@isar_mod_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015mISDN: ISAR module unloaded\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isar_mod_cleanup\00", [47 x i8] zeroinitializer }, align 32
@isar_mod_cleanup._entry_ptr = internal global ptr @isar_mod_cleanup._entry, section ".printk_index", align 4
@__initcall__kmod_mISDNisar__538_1692_isar_mod_init6 = internal global ptr @isar_mod_init, section ".initcall6.init", align 4
@__exitcall_isar_mod_cleanup = internal global ptr @isar_mod_cleanup, section ".exitcall.exit", align 4
@get_irq_infos.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_irq_infos\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: rcv_mbox(%02x,%02x,%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isar_rcv_frame\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s; ISAR zero len frame\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: ISAR protocol 0 spurious IIS_RDATA %x/%x/%x\0A\00", [47 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s.B%d: No bufferspace for %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr = internal global ptr @isar_rcv_frame._entry, section ".printk_index", align 4
@isar_rcv_frame._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.21 = internal global ptr @isar_rcv_frame._entry.20, section ".printk_index", align 4
@isar_rcv_frame.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.22, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ISAR frame error %x len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.23, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ISAR frame to short %d\0A\00", [36 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.24, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: isar_rcv_frame: not ACTIV\0A\00", [33 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.4, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: B receive out of memory\0A\00", [33 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.27 = internal global ptr @isar_rcv_frame._entry.25, section ".printk_index", align 4
@isar_rcv_frame.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.28, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: isar_rcv_frame: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.29, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: isar_rcv_frame: no more data\0A\00", [62 x i8] zeroinitializer }, align 32
@isar_rcv_frame.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.30, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: isar_rcv_frame: unknown fax mode %x\0A\00", [55 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.4, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: %s incoming packet too large\0A\00", [60 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.33 = internal global ptr @isar_rcv_frame._entry.31, section ".printk_index", align 4
@isar_rcv_frame._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.16, ptr @.str.4, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: ISAR frame error %x len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.36 = internal global ptr @isar_rcv_frame._entry.34, section ".printk_index", align 4
@isar_rcv_frame._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.16, ptr @.str.4, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: ISAR frame to short %d\0A\00", [34 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.39 = internal global ptr @isar_rcv_frame._entry.37, section ".printk_index", align 4
@isar_rcv_frame.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.29, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isar_rcv_frame._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.16, ptr @.str.4, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016isar_rcv_frame protocol (%x)error\0A\00", [59 x i8] zeroinitializer }, align 32
@isar_rcv_frame._entry_ptr.42 = internal global ptr @isar_rcv_frame._entry.40, section ".printk_index", align 4
@send_mbox.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_mbox\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"send_mbox(%02x,%02x,%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@send_mbox.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s %02x: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@waitforHIA.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"waitforHIA\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: HIA after %dus\0A\00", [44 x i8] zeroinitializer }, align 32
@deliver_status.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"deliver_status\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: HL->LL FAXIND %x\0A\00", [42 x i8] zeroinitializer }, align 32
@check_send.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_send\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: rdm %x\0A\00", [20 x i8] zeroinitializer }, align 32
@isar_fill_fifo.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isar_fill_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ch%d  tx_skb %d tx_idx %d\0A\00", [33 x i8] zeroinitializer }, align 32
@isar_fill_fifo.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.54, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: frame start\0A\00", [47 x i8] zeroinitializer }, align 32
@isar_fill_fifo.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.55, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: set LASTDATA\0A\00", [46 x i8] zeroinitializer }, align 32
@isar_fill_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.4, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: wrong protocol 0\0A\00", [40 x i8] zeroinitializer }, align 32
@isar_fill_fifo._entry_ptr = internal global ptr @isar_fill_fifo._entry, section ".printk_index", align 4
@isar_fill_fifo.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.57, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: not ACTIV\0A\00", [17 x i8] zeroinitializer }, align 32
@isar_fill_fifo.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.58, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: not FTH/FTM\0A\00", [47 x i8] zeroinitializer }, align 32
@isar_fill_fifo._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.4, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: protocol(%x) error\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_fill_fifo._entry_ptr.61 = internal global ptr @isar_fill_fifo._entry.59, section ".printk_index", align 4
@send_next.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_next\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s ch%d tx_skb %d tx_idx %d\0A\00", [63 x i8] zeroinitializer }, align 32
@send_next.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.64, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set NMD_DATA\0A\00", [18 x i8] zeroinitializer }, align 32
@rcv_mbox.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.4, ptr @.str.45, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcv_mbox\00", [23 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isar_pump_statev_modem\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: pump stev TIMER\0A\00", [43 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: pump stev CONNECT\0A\00", [41 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pump stev NO CONNECT\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.70, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: pump stev V24 OFF\0A\00", [41 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.71, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: pump stev CTS ON\0A\00", [42 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.72, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s pump stev CTS OFF\0A\00", [42 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.73, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pump stev CARRIER ON\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.74, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: pump stev CARRIER OFF\0A\00", [37 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.75, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: pump stev DSR ON\0A\00", [42 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.76, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: pump stev DSR_OFF\0A\00", [41 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.77, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: pump stev REMOTE RETRAIN\0A\00", [34 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.78, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: pump stev REMOTE RENEGOTIATE\0A\00", [62 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.4, ptr @.str.79, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pump stev GSTN CLEAR\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str.4, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016u%s: unknown pump stev %x\0A\00", [35 x i8] zeroinitializer }, align 32
@isar_pump_statev_modem._entry_ptr = internal global ptr @isar_pump_statev_modem._entry, section ".printk_index", align 4
@isar_pump_statev_fax.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.67, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isar_pump_statev_fax\00", [43 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev RSP_READY\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.83, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev LINE_TX_H\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.84, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pump stev LINE_TX_H wrong st %x\0A\00", [59 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.85, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev LINE_RX_H\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.86, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pump stev LINE_RX_H wrong st %x\0A\00", [59 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.87, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev LINE_TX_B\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.88, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pump stev LINE_TX_B wrong st %x\0A\00", [59 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.89, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev LINE_RX_B\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.90, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pump stev LINE_RX_B wrong st %x\0A\00", [59 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.91, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: pump stev RSP_CONN\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@isar_pump_statev_fax.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.92, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: pump stev RSP_CONN wrong st %x\0A\00", [60 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.93, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev FLAGS_DET\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.94, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: pump stev RSP_DISC state(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.95, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: RSP_DISC unknown newcmd %x\0A\00", [32 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.96, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pump stev RSP_SILDET\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.97, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pump stev RSP_SILOFF\0A\00", [38 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.98, i8 0, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: pump stev RSP_FCERR try %d\0A\00", [32 x i8] zeroinitializer }, align 32
@isar_pump_statev_fax.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.99, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: pump stev RSP_FCERR\0A\00", [39 x i8] zeroinitializer }, align 32
@isar_pump_status_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: wrong pstrsp ril=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isar_pump_status_rsp\00", [43 x i8] zeroinitializer }, align 32
@isar_pump_status_rsp._entry_ptr = internal global ptr @isar_pump_status_rsp._entry, section ".printk_index", align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@dmril = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], [32 x i8] zeroinitializer }, align 32
@dmrim = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [52 x i8] zeroinitializer }, align 32
@isar_pump_status_rsp.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.4, ptr @.str.103, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: pump strsp %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NO SPEED\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1200/75\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NODEF2\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"75/1200\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NODEF4\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"300\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"600\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1200\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2400\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4800\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7200\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9600nt\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9600t\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12000\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"14400\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRONG\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NO MOD\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NO DEF\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V32/V32b\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V22\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V21\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bell103\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V23\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bell202\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V17\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V29\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"V27ter\00", [25 x i8] zeroinitializer }, align 32
@isar_l2l1.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.131, ptr @.str.4, ptr @.str.132, i8 1, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isar_l2l1\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: PH_CONTROL | REQUEST %x/%x\0A\00", [32 x i8] zeroinitializer }, align 32
@isar_l2l1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: DTMF send wrong protocol %x\0A\00", [61 x i8] zeroinitializer }, align 32
@isar_l2l1._entry_ptr = internal global ptr @isar_l2l1._entry, section ".printk_index", align 4
@isar_l2l1.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.131, ptr @.str.4, ptr @.str.134, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: isar: new mod\0A\00", [45 x i8] zeroinitializer }, align 32
@isar_l2l1._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.4, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: wrong modulation\0A\00", [40 x i8] zeroinitializer }, align 32
@isar_l2l1._entry_ptr.137 = internal global ptr @isar_l2l1._entry.135, section ".printk_index", align 4
@isar_l2l1._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.4, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: unknown PH_CONTROL_REQ %x\0A\00", [63 x i8] zeroinitializer }, align 32
@isar_l2l1._entry_ptr.140 = internal global ptr @isar_l2l1._entry.138, section ".printk_index", align 4
@isar_l2l1._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.131, ptr @.str.4, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s unknown prim(%x,%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@isar_l2l1._entry_ptr.143 = internal global ptr @isar_l2l1._entry.141, section ".printk_index", align 4
@modeisar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.4, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016modeisar both paths in use\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modeisar\00", [23 x i8] zeroinitializer }, align 32
@modeisar._entry_ptr = internal global ptr @modeisar._entry, section ".printk_index", align 4
@modeisar._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.4, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: ISAR modeisar analog functionsonly with DP1\0A\00", [45 x i8] zeroinitializer }, align 32
@modeisar._entry_ptr.148 = internal global ptr @modeisar._entry.146, section ".printk_index", align 4
@modeisar._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.4, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: protocol not known %x\0A\00", [35 x i8] zeroinitializer }, align 32
@modeisar._entry_ptr.151 = internal global ptr @modeisar._entry.149, section ".printk_index", align 4
@modeisar.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.145, ptr @.str.4, ptr @.str.152, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ISAR ch%d dp%d protocol %x->%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__const.setup_iom2.msg = private unnamed_addr constant [5 x i8] c"\10\00\00\00\00", align 1
@isar_pump_cmd.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.154, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isar_pump_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: isar_pump_cmd %x/%x state(%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@isar_bctrl.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.155, ptr @.str.4, ptr @.str.156, i8 1, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isar_bctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s cmd:%x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@isar_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.4, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s unknown prim(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@isar_bctrl._entry_ptr = internal global ptr @isar_bctrl._entry, section ".printk_index", align 4
@init_isar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.4, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: Testing version %d (%d time)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_isar\00", [22 x i8] zeroinitializer }, align 32
@init_isar._entry_ptr = internal global ptr @init_isar._entry, section ".printk_index", align 4
@init_isar.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&isar->ch[0].ftimer)\00", [42 x i8] zeroinitializer }, align 32
@init_isar.__key.161 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&isar->ch[1].ftimer)\00", [42 x i8] zeroinitializer }, align 32
@poll_mbox.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.163, ptr @.str.4, ptr @.str.164, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"poll_mbox\00", [22 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: pulled %d bytes after %d us\0A\00", [63 x i8] zeroinitializer }, align 32
@ftimer_handler.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.165, ptr @.str.4, ptr @.str.166, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftimer_handler\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ftimer flags %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.4, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: ISAR wrong version %d firmware download aborted\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_firmware\00", [18 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr = internal global ptr @load_firmware._entry, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.169, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: load firmware %d words (%d bytes)\0A\00", [57 x i8] zeroinitializer }, align 32
@load_firmware.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.170, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ISAR firmware block (%#x,%d,%#x)\0A\00", [62 x i8] zeroinitializer }, align 32
@load_firmware._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.168, ptr @.str.4, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: firmware error have %d need %d words\0A\00", [52 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.173 = internal global ptr @load_firmware._entry.171, section ".printk_index", align 4
@load_firmware._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.168, ptr @.str.4, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ISAR send_mbox dkey failed\0A\00", [34 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.176 = internal global ptr @load_firmware._entry.174, section ".printk_index", align 4
@load_firmware._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.168, ptr @.str.4, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014ISAR poll_mbox dkey failed\0A\00", [34 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.179 = internal global ptr @load_firmware._entry.177, section ".printk_index", align 4
@load_firmware._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.168, ptr @.str.4, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ISAR wrong dkey response (%x,%x,%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.182 = internal global ptr @load_firmware._entry.180, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.183, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: load %3d words at %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@load_firmware._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.168, ptr @.str.4, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ISAR send_mbox prog failed\0A\00", [34 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.186 = internal global ptr @load_firmware._entry.184, section ".printk_index", align 4
@load_firmware._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.168, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ISAR poll_mbox prog failed\0A\00", [34 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.189 = internal global ptr @load_firmware._entry.187, section ".printk_index", align 4
@load_firmware._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.168, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ISAR wrong prog response (%x,%x,%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.192 = internal global ptr @load_firmware._entry.190, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.193, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ISAR firmware block %d words loaded\0A\00", [55 x i8] zeroinitializer }, align 32
@load_firmware._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.168, ptr @.str.4, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ISAR send_mbox start dsp failed\0A\00", [61 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.196 = internal global ptr @load_firmware._entry.194, section ".printk_index", align 4
@load_firmware._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.168, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ISAR poll_mbox start dsp failed\0A\00", [61 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.199 = internal global ptr @load_firmware._entry.197, section ".printk_index", align 4
@load_firmware._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.168, ptr @.str.4, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ISAR wrong start dsp response (%x,%x,%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.202 = internal global ptr @load_firmware._entry.200, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.203, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ISAR start dsp success\0A\00", [36 x i8] zeroinitializer }, align 32
@load_firmware._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.168, ptr @.str.4, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ISAR no general status event received\0A\00", [55 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.206 = internal global ptr @load_firmware._entry.204, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.207, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ISAR general status event %x\0A\00", [62 x i8] zeroinitializer }, align 32
@load_firmware._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.168, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ISAR send_mbox self tst failed\0A\00", [62 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.210 = internal global ptr @load_firmware._entry.208, section ".printk_index", align 4
@load_firmware._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.168, ptr @.str.4, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ISAR no self tst response\0A\00", [35 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.213 = internal global ptr @load_firmware._entry.211, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.214, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ISAR selftest OK\0A\00", [42 x i8] zeroinitializer }, align 32
@load_firmware._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.168, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ISAR selftest not OK %x/%x/%x\0A\00", [63 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.217 = internal global ptr @load_firmware._entry.215, section ".printk_index", align 4
@load_firmware._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.168, ptr @.str.4, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016ISAR RQST SVN failed\0A\00", [40 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.220 = internal global ptr @load_firmware._entry.218, section ".printk_index", align 4
@load_firmware._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.168, ptr @.str.4, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016ISAR no SVN response\0A\00", [40 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.223 = internal global ptr @load_firmware._entry.221, section ".printk_index", align 4
@load_firmware._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.168, ptr @.str.4, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: ISAR software version %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.226 = internal global ptr @load_firmware._entry.224, section ".printk_index", align 4
@load_firmware._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.168, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: ISAR wrong swver response (%x,%x) cnt(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.229 = internal global ptr @load_firmware._entry.227, section ".printk_index", align 4
@isar_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.4, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015mISDN: ISAR driver Rev. %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isar_mod_init\00", [18 x i8] zeroinitializer }, align 32
@isar_mod_init._entry_ptr = internal global ptr @isar_mod_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 32, i64 37, i64 39, i64 40, i64 42, i64 44, i64 46, i64 63]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 32, i64 33, i64 39, i64 40]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 8, i64 62, i64 63]
@__sancov_gen_cov_switch_values.234 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 34, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 8, i64 165, i64 166]
@__sancov_gen_cov_switch_values.236 = internal global [15 x i64] [i64 13, i64 8, i64 2, i64 24, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 204, i64 205, i64 212]
@__sancov_gen_cov_switch_values.237 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 171, i64 176, i64 177, i64 178, i64 179, i64 181, i64 183, i64 185, i64 186, i64 188, i64 190]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.239 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 165, i64 166, i64 167, i64 168]
@__sancov_gen_cov_switch_values.240 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 32, i64 64, i64 65, i64 81, i64 97, i64 113, i64 130, i64 146, i64 162]
@__sancov_gen_cov_switch_values.241 = internal global [6 x i64] [i64 4, i64 32, i64 257, i64 513, i64 2049, i64 8193]
@__sancov_gen_cov_switch_values.242 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 16384, i64 16385, i64 16386, i64 16387, i64 16405]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 8, i64 35, i64 42]
@__sancov_gen_cov_switch_values.244 = internal global [15 x i64] [i64 13, i64 32, i64 3, i64 24, i64 48, i64 72, i64 73, i64 74, i64 96, i64 97, i64 98, i64 121, i64 122, i64 145, i64 146]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.246 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 34, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 8, i64 167, i64 168]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 8, i64 167, i64 168]
@__sancov_gen_cov_switch_values.249 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 34, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.250 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 34, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.251 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.252 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 34, i64 36, i64 39, i64 40]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.254 = internal global [7 x i64] [i64 5, i64 32, i64 90, i64 16384, i64 16385, i64 16386, i64 16387]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 26, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1047, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1068, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1094, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1098, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1110, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1123, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1127, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1690, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 118, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 414, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 425, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 434, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 445, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 451, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 469, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 480, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 491, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 499, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 502, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 517, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 527, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 533, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 545, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 566, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 60, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 74, i32 5 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 47, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 403, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 723, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 579, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 606, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 614, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 627, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 641, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 649, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 652, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 676, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 682, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 103, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 808, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 811, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 815, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 820, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 823, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 826, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 829, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 834, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 837, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 840, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 843, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 846, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 849, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 852, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 864, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 867, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 879, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 884, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 890, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 895, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 901, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 906, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 912, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 917, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 923, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 942, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 947, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 950, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 979, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 998, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1012, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1016, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1024, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 760, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 798, i32 22 }
@___asan_gen_.562 = private unnamed_addr constant [6 x i8] c"dmril\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 20 }
@___asan_gen_.565 = private unnamed_addr constant [6 x i8] c"dmrim\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 20 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 799, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 31 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 43 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 54 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 64 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 746, i32 75 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 10 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 17 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 24 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 32 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 40 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 747, i32 48 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 748, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 748, i32 20 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 748, i32 29 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 748, i32 38 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 748, i32 47 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 31 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 41 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 51 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 63 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 749, i32 70 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 10 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 21 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 28 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 39 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 46 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 750, i32 53 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1507, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1525, i32 5 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1536, i32 5 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1540, i32 5 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1547, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1553, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1293, i32 5 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1309, i32 5 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1315, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1320, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1345, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1576, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1594, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1619, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1627, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1629, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 142, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1139, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 188, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 194, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 207, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 211, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 219, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 224, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 230, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 248, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 259, i32 5 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 264, i32 5 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 271, i32 5 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 277, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 290, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 295, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 300, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 305, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 317, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 321, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 330, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 342, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 348, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 350, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 358, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 370, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 375, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 378, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.905 = private constant [43 x i8] c"../drivers/isdn/hardware/mISDN/mISDNisar.c\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.905, i32 1684, i32 2 }
@llvm.compiler.used = appending global [267 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__UNIQUE_ID_version460, ptr @__exitcall_isar_mod_cleanup, ptr @__initcall__kmod_mISDNisar__538_1692_isar_mod_init6, ptr @__ksymtab_mISDNisar_init, ptr @__ksymtab_mISDNisar_irq, ptr @__modver_attr, ptr @init_isar._entry, ptr @init_isar._entry_ptr, ptr @isar_bctrl._entry, ptr @isar_bctrl._entry_ptr, ptr @isar_fill_fifo._entry, ptr @isar_fill_fifo._entry.59, ptr @isar_fill_fifo._entry_ptr, ptr @isar_fill_fifo._entry_ptr.61, ptr @isar_l2l1._entry, ptr @isar_l2l1._entry.135, ptr @isar_l2l1._entry.138, ptr @isar_l2l1._entry.141, ptr @isar_l2l1._entry_ptr, ptr @isar_l2l1._entry_ptr.137, ptr @isar_l2l1._entry_ptr.140, ptr @isar_l2l1._entry_ptr.143, ptr @isar_mod_cleanup, ptr @isar_mod_cleanup._entry, ptr @isar_mod_cleanup._entry_ptr, ptr @isar_mod_init._entry, ptr @isar_mod_init._entry_ptr, ptr @isar_pump_statev_modem._entry, ptr @isar_pump_statev_modem._entry_ptr, ptr @isar_pump_status_rsp._entry, ptr @isar_pump_status_rsp._entry_ptr, ptr @isar_rcv_frame._entry, ptr @isar_rcv_frame._entry.20, ptr @isar_rcv_frame._entry.25, ptr @isar_rcv_frame._entry.31, ptr @isar_rcv_frame._entry.34, ptr @isar_rcv_frame._entry.37, ptr @isar_rcv_frame._entry.40, ptr @isar_rcv_frame._entry_ptr, ptr @isar_rcv_frame._entry_ptr.21, ptr @isar_rcv_frame._entry_ptr.27, ptr @isar_rcv_frame._entry_ptr.33, ptr @isar_rcv_frame._entry_ptr.36, ptr @isar_rcv_frame._entry_ptr.39, ptr @isar_rcv_frame._entry_ptr.42, ptr @load_firmware._entry, ptr @load_firmware._entry.171, ptr @load_firmware._entry.174, ptr @load_firmware._entry.177, ptr @load_firmware._entry.180, ptr @load_firmware._entry.184, ptr @load_firmware._entry.187, ptr @load_firmware._entry.190, ptr @load_firmware._entry.194, ptr @load_firmware._entry.197, ptr @load_firmware._entry.200, ptr @load_firmware._entry.204, ptr @load_firmware._entry.208, ptr @load_firmware._entry.211, ptr @load_firmware._entry.215, ptr @load_firmware._entry.218, ptr @load_firmware._entry.221, ptr @load_firmware._entry.224, ptr @load_firmware._entry.227, ptr @load_firmware._entry_ptr, ptr @load_firmware._entry_ptr.173, ptr @load_firmware._entry_ptr.176, ptr @load_firmware._entry_ptr.179, ptr @load_firmware._entry_ptr.182, ptr @load_firmware._entry_ptr.186, ptr @load_firmware._entry_ptr.189, ptr @load_firmware._entry_ptr.192, ptr @load_firmware._entry_ptr.196, ptr @load_firmware._entry_ptr.199, ptr @load_firmware._entry_ptr.202, ptr @load_firmware._entry_ptr.206, ptr @load_firmware._entry_ptr.210, ptr @load_firmware._entry_ptr.213, ptr @load_firmware._entry_ptr.217, ptr @load_firmware._entry_ptr.220, ptr @load_firmware._entry_ptr.223, ptr @load_firmware._entry_ptr.226, ptr @load_firmware._entry_ptr.229, ptr @modeisar._entry, ptr @modeisar._entry.146, ptr @modeisar._entry.149, ptr @modeisar._entry_ptr, ptr @modeisar._entry_ptr.148, ptr @modeisar._entry_ptr.151, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @dmril, ptr @dmrim, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @init_isar.__key, ptr @.str.160, ptr @init_isar.__key.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.230, ptr @.str.231], section "llvm.metadata"
@0 = internal global [216 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_mod_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_rcv_frame._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_fill_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_fill_fifo._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_pump_statev_modem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_pump_status_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmril to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmrim to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_l2l1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_l2l1._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_l2l1._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_l2l1._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeisar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeisar._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeisar._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_isar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_isar.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_isar.__key.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isar_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDNisar_irq(ptr noundef %isar) #1 align 64 {
entry:
  %tt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg.i, align 4
  %hw.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext 88) #8
  %iis.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 17
  %4 = ptrtoint ptr %iis.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call.i, ptr %iis.i, align 1
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %call3.i = tail call zeroext i8 %6(ptr noundef %8, i8 noundef zeroext 97) #8
  %cmsb.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 18
  %9 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call3.i, ptr %cmsb.i, align 2
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %call6.i = tail call zeroext i8 %11(ptr noundef %13, i8 noundef zeroext 96) #8
  %clsb.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %14 = ptrtoint ptr %clsb.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call6.i, ptr %clsb.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_irq_infos.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then.i)) #8
          to label %get_irq_infos.exit [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %17 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iis.i, align 1
  %conv.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmsb.i, align 2
  %conv12.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %clsb.i, align 1
  %conv14.i = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_irq_infos.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.15, ptr noundef %16, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #8
  br label %get_irq_infos.exit

get_irq_infos.exit:                               ; preds = %if.then.i, %entry
  %23 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iis.i, align 1
  %25 = and i8 %24, 63
  %and = zext i8 %25 to i32
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 32, label %sw.bb
    i32 0, label %sw.bb14
    i32 40, label %do.body23
    i32 42, label %sw.bb47
    i32 46, label %sw.bb143
    i32 37, label %get_irq_infos.exit.sw.bb178_crit_edge
    i32 44, label %get_irq_infos.exit.sw.bb178_crit_edge340
    i32 39, label %get_irq_infos.exit.sw.bb178_crit_edge341
    i32 63, label %sw.bb179
  ]

get_irq_infos.exit.sw.bb178_crit_edge341:         ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb178

get_irq_infos.exit.sw.bb178_crit_edge340:         ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb178

get_irq_infos.exit.sw.bb178_crit_edge:            ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb178

sw.bb:                                            ; preds = %get_irq_infos.exit
  %27 = lshr i8 %24, 6
  %28 = add nsw i8 %27, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %28)
  %29 = icmp ult i8 %28, -2
  br i1 %29, label %sw.bb.do.body_crit_edge, label %if.end.i

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %sw.bb
  %dpath2.i = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 4
  %30 = ptrtoint ptr %dpath2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dpath2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %27)
  %cmp5.i = icmp eq i8 %31, %27
  br i1 %cmp5.i, label %if.end.i.sel_bch_isar.exit_crit_edge, label %if.end8.i

if.end.i.sel_bch_isar.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit

if.end8.i:                                        ; preds = %if.end.i
  %dpath9.i = getelementptr %struct.isar_ch, ptr %isar, i32 1, i32 4
  %32 = ptrtoint ptr %dpath9.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dpath9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %27)
  %cmp12.i = icmp eq i8 %33, %27
  %incdec.ptr.i = getelementptr %struct.isar_ch, ptr %isar, i32 1
  br i1 %cmp12.i, label %if.end8.i.sel_bch_isar.exit_crit_edge, label %if.end8.i.do.body_crit_edge

if.end8.i.do.body_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i.sel_bch_isar.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit

sel_bch_isar.exit:                                ; preds = %if.end8.i.sel_bch_isar.exit_crit_edge, %if.end.i.sel_bch_isar.exit_crit_edge
  %retval.0.i304 = phi ptr [ %isar, %if.end.i.sel_bch_isar.exit_crit_edge ], [ %incdec.ptr.i, %if.end8.i.sel_bch_isar.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i304, null
  br i1 %tobool.not, label %sel_bch_isar.exit.do.body_crit_edge, label %if.then

sel_bch_isar.exit.do.body_crit_edge:              ; preds = %sel_bch_isar.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %sel_bch_isar.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_rcv_frame(ptr noundef nonnull %retval.0.i304)
  br label %sw.epilog

do.body:                                          ; preds = %sel_bch_isar.exit.do.body_crit_edge, %if.end8.i.do.body_crit_edge, %sw.bb.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !511

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %36 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iis.i, align 1
  %conv10 = zext i8 %37 to i32
  %38 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cmsb.i, align 2
  %conv11 = zext i8 %39 to i32
  %40 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %clsb.i, align 1
  %conv12 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.5, ptr noundef %35, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %write_reg = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %42 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg, align 4
  %44 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i, align 4
  tail call void %43(ptr noundef %45, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg15 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %46 = ptrtoint ptr %write_reg15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg15, align 4
  %48 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw.i, align 4
  tail call void %47(ptr noundef %49, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %50 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cmsb.i, align 2
  %bstat = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 16
  %52 = ptrtoint ptr %bstat to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bstat, align 4
  %or285 = or i8 %53, %51
  store i8 %or285, ptr %bstat, align 4
  tail call fastcc void @check_send(ptr noundef %isar, i8 noundef zeroext %51)
  br label %sw.epilog

do.body23:                                        ; preds = %get_irq_infos.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then35)) #8
          to label %do.end44 [label %if.then35], !srcloc !511

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %name36 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %54 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name36, align 4
  %56 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %iis.i, align 1
  %58 = lshr i8 %57, 6
  %59 = zext i8 %58 to i32
  %60 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cmsb.i, align 2
  %conv41 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.6, ptr noundef %55, i32 noundef %59, i32 noundef %conv41) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then35, %do.body23
  %write_reg45 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %62 = ptrtoint ptr %write_reg45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg45, align 4
  %64 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i, align 4
  tail call void %63(ptr noundef %65, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb47:                                          ; preds = %get_irq_infos.exit
  %66 = lshr i8 %24, 6
  %67 = add nsw i8 %66, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %67)
  %68 = icmp ult i8 %67, -2
  br i1 %68, label %sw.bb47.do.body117_crit_edge, label %if.end.i307

sw.bb47.do.body117_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end.i307:                                      ; preds = %sw.bb47
  %dpath2.i305 = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 4
  %69 = ptrtoint ptr %dpath2.i305 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dpath2.i305, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %66)
  %cmp5.i306 = icmp eq i8 %70, %66
  br i1 %cmp5.i306, label %if.end.i307.sel_bch_isar.exit314_crit_edge, label %if.end8.i312

if.end.i307.sel_bch_isar.exit314_crit_edge:       ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit314

if.end8.i312:                                     ; preds = %if.end.i307
  %dpath9.i308 = getelementptr %struct.isar_ch, ptr %isar, i32 1, i32 4
  %71 = ptrtoint ptr %dpath9.i308 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dpath9.i308, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %66)
  %cmp12.i309 = icmp eq i8 %72, %66
  %incdec.ptr.i310 = getelementptr %struct.isar_ch, ptr %isar, i32 1
  br i1 %cmp12.i309, label %if.end8.i312.sel_bch_isar.exit314_crit_edge, label %if.end8.i312.do.body117_crit_edge

if.end8.i312.do.body117_crit_edge:                ; preds = %if.end8.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.end8.i312.sel_bch_isar.exit314_crit_edge:      ; preds = %if.end8.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit314

sel_bch_isar.exit314:                             ; preds = %if.end8.i312.sel_bch_isar.exit314_crit_edge, %if.end.i307.sel_bch_isar.exit314_crit_edge
  %retval.0.i313 = phi ptr [ %isar, %if.end.i307.sel_bch_isar.exit314_crit_edge ], [ %incdec.ptr.i310, %if.end8.i312.sel_bch_isar.exit314_crit_edge ]
  %tobool53.not = icmp eq ptr %retval.0.i313, null
  br i1 %tobool53.not, label %sel_bch_isar.exit314.do.body117_crit_edge, label %if.then54

sel_bch_isar.exit314.do.body117_crit_edge:        ; preds = %sel_bch_isar.exit314
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.then54:                                        ; preds = %sel_bch_isar.exit314
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  %state = getelementptr inbounds %struct.bchannel, ptr %retval.0.i313, i32 0, i32 4
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %74, label %do.body92 [
    i32 40, label %if.then56
    i32 39, label %if.then63
    i32 33, label %if.then70
  ]

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cmsb.i, align 2
  tail call fastcc void @isar_pump_statev_modem(ptr noundef nonnull %retval.0.i313, i8 noundef zeroext %77)
  br label %sw.epilog

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cmsb.i, align 2
  tail call fastcc void @isar_pump_statev_fax(ptr noundef nonnull %retval.0.i313, i8 noundef zeroext %79)
  br label %sw.epilog

if.then70:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt) #8
  %80 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cmsb.i, align 2
  %82 = or i8 %81, 48
  %or73 = zext i8 %82 to i32
  %83 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or73, ptr %tt, align 4
  %84 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.233)
  switch i8 %82, label %if.else81 [
    i8 62, label %if.then76
    i8 63, label %if.then80
  ]

if.then76:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 42, ptr %tt, align 4
  br label %if.end87

if.then80:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 35, ptr %tt, align 4
  br label %if.end87

if.else81:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %82)
  %cmp82 = icmp ugt i8 %82, 57
  br i1 %cmp82, label %if.then84, label %if.else81.if.end87_crit_edge

if.else81.if.end87_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then84:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %or73, 7
  %87 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add, ptr %tt, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.else81.if.end87_crit_edge, %if.then80, %if.then76
  %88 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tt, align 4
  %or88 = or i32 %89, 8192
  store i32 %or88, ptr %tt, align 4
  call fastcc void @_queue_data(ptr noundef nonnull %retval.0.i313, i32 noundef 2050, i32 noundef 65535, i32 noundef 4, ptr noundef nonnull %tt, i32 noundef 2592)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt) #8
  br label %sw.epilog

do.body92:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then104)) #8
          to label %sw.epilog [label %if.then104], !srcloc !511

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %name105 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %90 = ptrtoint ptr %name105 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name105, align 4
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state, align 4
  %94 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cmsb.i, align 2
  %conv109 = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.7, ptr noundef %91, i32 noundef %93, i32 noundef %conv109) #8
  br label %sw.epilog

do.body117:                                       ; preds = %sel_bch_isar.exit314.do.body117_crit_edge, %if.end8.i312.do.body117_crit_edge, %sw.bb47.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then129)) #8
          to label %do.end139 [label %if.then129], !srcloc !511

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %name130 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %96 = ptrtoint ptr %name130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name130, align 4
  %98 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %iis.i, align 1
  %conv132 = zext i8 %99 to i32
  %100 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cmsb.i, align 2
  %conv134 = zext i8 %101 to i32
  %102 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %clsb.i, align 1
  %conv136 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.8, ptr noundef %97, i32 noundef %conv132, i32 noundef %conv134, i32 noundef %conv136) #8
  br label %do.end139

do.end139:                                        ; preds = %if.then129, %do.body117
  %write_reg140 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %104 = ptrtoint ptr %write_reg140 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_reg140, align 4
  %106 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw.i, align 4
  tail call void %105(ptr noundef %107, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb143:                                         ; preds = %get_irq_infos.exit
  %108 = lshr i8 %24, 6
  %109 = add nsw i8 %108, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %109)
  %110 = icmp ult i8 %109, -2
  br i1 %110, label %sw.bb143.do.body152_crit_edge, label %if.end.i317

sw.bb143.do.body152_crit_edge:                    ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.end.i317:                                      ; preds = %sw.bb143
  %dpath2.i315 = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 4
  %111 = ptrtoint ptr %dpath2.i315 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dpath2.i315, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %108)
  %cmp5.i316 = icmp eq i8 %112, %108
  br i1 %cmp5.i316, label %if.end.i317.sel_bch_isar.exit324_crit_edge, label %if.end8.i322

if.end.i317.sel_bch_isar.exit324_crit_edge:       ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit324

if.end8.i322:                                     ; preds = %if.end.i317
  %dpath9.i318 = getelementptr %struct.isar_ch, ptr %isar, i32 1, i32 4
  %113 = ptrtoint ptr %dpath9.i318 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %dpath9.i318, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %108)
  %cmp12.i319 = icmp eq i8 %114, %108
  %incdec.ptr.i320 = getelementptr %struct.isar_ch, ptr %isar, i32 1
  br i1 %cmp12.i319, label %if.end8.i322.sel_bch_isar.exit324_crit_edge, label %if.end8.i322.do.body152_crit_edge

if.end8.i322.do.body152_crit_edge:                ; preds = %if.end8.i322
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.end8.i322.sel_bch_isar.exit324_crit_edge:      ; preds = %if.end8.i322
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit324

sel_bch_isar.exit324:                             ; preds = %if.end8.i322.sel_bch_isar.exit324_crit_edge, %if.end.i317.sel_bch_isar.exit324_crit_edge
  %retval.0.i323 = phi ptr [ %isar, %if.end.i317.sel_bch_isar.exit324_crit_edge ], [ %incdec.ptr.i320, %if.end8.i322.sel_bch_isar.exit324_crit_edge ]
  %tobool149.not = icmp eq ptr %retval.0.i323, null
  br i1 %tobool149.not, label %sel_bch_isar.exit324.do.body152_crit_edge, label %if.then150

sel_bch_isar.exit324.do.body152_crit_edge:        ; preds = %sel_bch_isar.exit324
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.then150:                                       ; preds = %sel_bch_isar.exit324
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  tail call fastcc void @isar_pump_status_rsp(ptr noundef nonnull %retval.0.i323)
  br label %sw.epilog

do.body152:                                       ; preds = %sel_bch_isar.exit324.do.body152_crit_edge, %if.end8.i322.do.body152_crit_edge, %sw.bb143.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then164)) #8
          to label %do.end174 [label %if.then164], !srcloc !511

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  %name165 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %115 = ptrtoint ptr %name165 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name165, align 4
  %117 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %iis.i, align 1
  %conv167 = zext i8 %118 to i32
  %119 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cmsb.i, align 2
  %conv169 = zext i8 %120 to i32
  %121 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %clsb.i, align 1
  %conv171 = zext i8 %122 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug529, ptr noundef nonnull @.str.9, ptr noundef %116, i32 noundef %conv167, i32 noundef %conv169, i32 noundef %conv171) #8
  br label %do.end174

do.end174:                                        ; preds = %if.then164, %do.body152
  %write_reg175 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %123 = ptrtoint ptr %write_reg175 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_reg175, align 4
  %125 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw.i, align 4
  tail call void %124(ptr noundef %126, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb178:                                         ; preds = %get_irq_infos.exit.sw.bb178_crit_edge, %get_irq_infos.exit.sw.bb178_crit_edge340, %get_irq_infos.exit.sw.bb178_crit_edge341
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  br label %sw.epilog

sw.bb179:                                         ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then192)) #8
          to label %sw.epilog [label %if.then192], !srcloc !511

if.then192:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #10
  %name193 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %127 = ptrtoint ptr %name193 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name193, align 4
  %129 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %cmsb.i, align 2
  %conv195 = zext i8 %130 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug530, ptr noundef nonnull @.str.10, ptr noundef %128, i32 noundef %conv195) #8
  br label %sw.epilog

sw.default:                                       ; preds = %get_irq_infos.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisar_irq.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisar_irq, %if.then211)) #8
          to label %sw.epilog [label %if.then211], !srcloc !511

if.then211:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %name212 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %131 = ptrtoint ptr %name212 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name212, align 4
  %133 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %iis.i, align 1
  %conv214 = zext i8 %134 to i32
  %135 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %cmsb.i, align 2
  %conv216 = zext i8 %136 to i32
  %137 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %clsb.i, align 1
  %conv218 = zext i8 %138 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisar_irq.__UNIQUE_ID_ddebug531, ptr noundef nonnull @.str.11, ptr noundef %132, i32 noundef %conv214, i32 noundef %conv216, i32 noundef %conv218) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then211, %sw.default, %if.then192, %sw.bb179, %sw.bb178, %do.end174, %if.then150, %do.end139, %if.then104, %do.body92, %if.end87, %if.then63, %if.then56, %do.end44, %sw.bb14, %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_rcv_frame(ptr noundef %ch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %clsb = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !511

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.17, ptr noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is, align 4
  %write_reg = getelementptr inbounds %struct.isar_hw, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %hw = getelementptr inbounds %struct.isar_hw, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  tail call void %11(ptr noundef %13, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %14 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %Flags, align 4
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 25
  %17 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dropcnt, align 4
  %add = add i32 %18, %conv
  store i32 %add, ptr %dropcnt, align 4
  %write_reg16 = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %write_reg16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg16, align 4
  %hw18 = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw18, align 4
  tail call void %20(ptr noundef %22, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %24, label %do.end533 [
    i32 0, label %do.body21
    i32 33, label %if.end19.sw.bb50_crit_edge
    i32 36, label %if.end19.sw.bb50_crit_edge710
    i32 40, label %if.end19.sw.bb50_crit_edge711
    i32 34, label %sw.bb81
    i32 39, label %sw.bb201
  ]

if.end19.sw.bb50_crit_edge711:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50

if.end19.sw.bb50_crit_edge710:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50

if.end19.sw.bb50_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50

do.body21:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then33)) #8
          to label %do.end45 [label %if.then33], !srcloc !511

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %is, align 4
  %name35 = getelementptr inbounds %struct.isar_hw, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name35, align 4
  %iis = getelementptr inbounds %struct.isar_hw, ptr %27, i32 0, i32 17
  %30 = ptrtoint ptr %iis to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iis, align 1
  %conv37 = zext i8 %31 to i32
  %cmsb = getelementptr inbounds %struct.isar_hw, ptr %27, i32 0, i32 18
  %32 = ptrtoint ptr %cmsb to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmsb, align 2
  %conv39 = zext i8 %33 to i32
  %clsb41 = getelementptr inbounds %struct.isar_hw, ptr %27, i32 0, i32 19
  %34 = ptrtoint ptr %clsb41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %clsb41, align 1
  %conv42 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.18, ptr noundef %29, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %conv42) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then33, %do.body21
  %36 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %is, align 4
  %write_reg47 = getelementptr inbounds %struct.isar_hw, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %write_reg47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg47, align 4
  %hw49 = getelementptr inbounds %struct.isar_hw, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %hw49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw49, align 4
  tail call void %39(ptr noundef %41, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

sw.bb50:                                          ; preds = %if.end19.sw.bb50_crit_edge, %if.end19.sw.bb50_crit_edge710, %if.end19.sw.bb50_crit_edge711
  %conv54 = zext i8 %3 to i32
  %call55 = tail call i32 @bchannel_get_rxbuf(ptr noundef %ch, i32 noundef %conv54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  %42 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %is, align 4
  br i1 %cmp, label %do.end60, label %if.end73

do.end60:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %name63 = getelementptr inbounds %struct.isar_hw, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %name63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name63, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %46 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr, align 4
  %clsb66 = getelementptr inbounds %struct.isar_hw, ptr %43, i32 0, i32 19
  %48 = ptrtoint ptr %clsb66 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %clsb66, align 1
  %conv67 = zext i8 %49 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %45, i32 noundef %47, i32 noundef %conv67) #11
  %50 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %is, align 4
  %write_reg70 = getelementptr inbounds %struct.isar_hw, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %write_reg70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg70, align 4
  %hw72 = getelementptr inbounds %struct.isar_hw, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %hw72 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw72, align 4
  tail call void %53(ptr noundef %55, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end73:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %56 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_skb, align 4
  %clsb77 = getelementptr inbounds %struct.isar_hw, ptr %43, i32 0, i32 19
  %58 = ptrtoint ptr %clsb77 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %clsb77, align 1
  %conv78 = zext i8 %59 to i32
  %call79 = tail call ptr @skb_put(ptr noundef %57, i32 noundef %conv78) #8
  tail call fastcc void @rcv_mbox(ptr noundef %43, ptr noundef %call79)
  tail call void @recv_Bchannel(ptr noundef %ch, i32 noundef 0, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb81:                                          ; preds = %if.end19
  %conv85 = zext i8 %3 to i32
  %call86 = tail call i32 @bchannel_get_rxbuf(ptr noundef %ch, i32 noundef %conv85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  %60 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %is, align 4
  br i1 %cmp87, label %do.end92, label %if.end106

do.end92:                                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  %name95 = getelementptr inbounds %struct.isar_hw, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %name95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name95, align 4
  %nr97 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %64 = ptrtoint ptr %nr97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr97, align 4
  %clsb99 = getelementptr inbounds %struct.isar_hw, ptr %61, i32 0, i32 19
  %66 = ptrtoint ptr %clsb99 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %clsb99, align 1
  %conv100 = zext i8 %67 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %63, i32 noundef %65, i32 noundef %conv100) #11
  %68 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %is, align 4
  %write_reg103 = getelementptr inbounds %struct.isar_hw, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %write_reg103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_reg103, align 4
  %hw105 = getelementptr inbounds %struct.isar_hw, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %hw105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw105, align 4
  tail call void %71(ptr noundef %73, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end106:                                        ; preds = %sw.bb81
  %cmsb108 = getelementptr inbounds %struct.isar_hw, ptr %61, i32 0, i32 18
  %74 = ptrtoint ptr %cmsb108 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cmsb108, align 2
  %conv109 = zext i8 %75 to i32
  %and = and i32 %conv109, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool110.not = icmp eq i32 %and, 0
  br i1 %tobool110.not, label %if.end142, label %do.body112

do.body112:                                       ; preds = %if.end106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then124)) #8
          to label %do.end135 [label %if.then124], !srcloc !511

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %is, align 4
  %name126 = getelementptr inbounds %struct.isar_hw, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %name126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name126, align 4
  %cmsb128 = getelementptr inbounds %struct.isar_hw, ptr %77, i32 0, i32 18
  %80 = ptrtoint ptr %cmsb128 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cmsb128, align 2
  %conv129 = zext i8 %81 to i32
  %clsb131 = getelementptr inbounds %struct.isar_hw, ptr %77, i32 0, i32 19
  %82 = ptrtoint ptr %clsb131 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %clsb131, align 1
  %conv132 = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.22, ptr noundef %79, i32 noundef %conv129, i32 noundef %conv132) #8
  br label %do.end135

do.end135:                                        ; preds = %if.then124, %do.body112
  %rx_skb137 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %84 = ptrtoint ptr %rx_skb137 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_skb137, align 4
  tail call void @skb_trim(ptr noundef %85, i32 noundef 0) #8
  %86 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %is, align 4
  %write_reg139 = getelementptr inbounds %struct.isar_hw, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %write_reg139 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_reg139, align 4
  %hw141 = getelementptr inbounds %struct.isar_hw, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %hw141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw141, align 4
  tail call void %89(ptr noundef %91, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end142:                                        ; preds = %if.end106
  %and146 = and i32 %conv109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end142.if.end151_crit_edge, label %if.then148

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then148:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %rx_skb150 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %92 = ptrtoint ptr %rx_skb150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rx_skb150, align 4
  tail call void @skb_trim(ptr noundef %93, i32 noundef 0) #8
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end142.if.end151_crit_edge
  %rx_skb153 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %94 = ptrtoint ptr %rx_skb153 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_skb153, align 4
  %96 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %is, align 4
  %clsb155 = getelementptr inbounds %struct.isar_hw, ptr %97, i32 0, i32 19
  %98 = ptrtoint ptr %clsb155 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %clsb155, align 1
  %conv156 = zext i8 %99 to i32
  %call157 = tail call ptr @skb_put(ptr noundef %95, i32 noundef %conv156) #8
  %100 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %is, align 4
  tail call fastcc void @rcv_mbox(ptr noundef %101, ptr noundef %call157)
  %102 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %is, align 4
  %cmsb160 = getelementptr inbounds %struct.isar_hw, ptr %103, i32 0, i32 18
  %104 = ptrtoint ptr %cmsb160 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cmsb160, align 2
  %106 = and i8 %105, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool163.not = icmp eq i8 %106, 0
  br i1 %tobool163.not, label %if.end151.cleanup_crit_edge, label %if.then164

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then164:                                       ; preds = %if.end151
  %107 = ptrtoint ptr %rx_skb153 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx_skb153, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %cmp167 = icmp ult i32 %110, 3
  br i1 %cmp167, label %do.body170, label %if.end193

do.body170:                                       ; preds = %if.then164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then182)) #8
          to label %do.end190 [label %if.then182], !srcloc !511

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %is, align 4
  %name184 = getelementptr inbounds %struct.isar_hw, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %name184 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name184, align 4
  %115 = ptrtoint ptr %rx_skb153 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_skb153, align 4
  %len187 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %len187 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len187, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.23, ptr noundef %114, i32 noundef %118) #8
  br label %do.end190

do.end190:                                        ; preds = %if.then182, %do.body170
  %119 = ptrtoint ptr %rx_skb153 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_skb153, align 4
  tail call void @skb_trim(ptr noundef %120, i32 noundef 0) #8
  br label %cleanup

if.end193:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %110, -2
  tail call void @skb_trim(ptr noundef %108, i32 noundef %sub) #8
  tail call void @recv_Bchannel(ptr noundef %ch, i32 noundef 0, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb201:                                         ; preds = %if.end19
  %state202 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %121 = ptrtoint ptr %state202 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %state202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %122)
  %cmp204.not = icmp eq i8 %122, 4
  br i1 %cmp204.not, label %if.end236, label %do.body207

do.body207:                                       ; preds = %sw.bb201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then219)) #8
          to label %do.end224 [label %if.then219], !srcloc !511

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %is, align 4
  %name221 = getelementptr inbounds %struct.isar_hw, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %name221 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name221, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.24, ptr noundef %126) #8
  br label %do.end224

do.end224:                                        ; preds = %if.then219, %do.body207
  %127 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %is, align 4
  %write_reg226 = getelementptr inbounds %struct.isar_hw, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %write_reg226 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_reg226, align 4
  %hw228 = getelementptr inbounds %struct.isar_hw, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %hw228 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw228, align 4
  tail call void %130(ptr noundef %132, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %rx_skb230 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %133 = ptrtoint ptr %rx_skb230 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx_skb230, align 4
  %tobool231.not = icmp eq ptr %134, null
  br i1 %tobool231.not, label %do.end224.cleanup_crit_edge, label %if.then232

do.end224.cleanup_crit_edge:                      ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then232:                                       ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %134, i32 noundef 0) #8
  br label %cleanup

if.end236:                                        ; preds = %sw.bb201
  %rx_skb238 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 9
  %135 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rx_skb238, align 4
  %tobool239.not = icmp eq ptr %136, null
  br i1 %tobool239.not, label %if.then240, label %if.end236.if.end269_crit_edge

if.end236.if.end269_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

if.then240:                                       ; preds = %if.end236
  %maxlen242 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 10
  %137 = ptrtoint ptr %maxlen242 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %maxlen242, align 4
  %conv243 = zext i16 %138 to i32
  %call244 = tail call fastcc ptr @mI_alloc_skb(i32 noundef %conv243, i32 noundef 2592)
  %139 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call244, ptr %rx_skb238, align 4
  %tobool249.not = icmp eq ptr %call244, null
  br i1 %tobool249.not, label %do.end261, label %if.then240.if.end269_crit_edge, !prof !512

if.then240.if.end269_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

do.end261:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %call263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16) #11
  %140 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %is, align 4
  %write_reg265 = getelementptr inbounds %struct.isar_hw, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %write_reg265 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_reg265, align 4
  %hw267 = getelementptr inbounds %struct.isar_hw, ptr %141, i32 0, i32 1
  %144 = ptrtoint ptr %hw267 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw267, align 4
  tail call void %143(ptr noundef %145, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end269:                                        ; preds = %if.then240.if.end269_crit_edge, %if.end236.if.end269_crit_edge
  %cmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %146 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %cmd, align 4
  %148 = zext i8 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %147, label %do.body351 [
    i8 -90, label %if.then273
    i8 -91, label %if.end382
  ]

if.then273:                                       ; preds = %if.end269
  %149 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %is, align 4
  %151 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rx_skb238, align 4
  %clsb278 = getelementptr inbounds %struct.isar_hw, ptr %150, i32 0, i32 19
  %153 = ptrtoint ptr %clsb278 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %clsb278, align 1
  %conv279 = zext i8 %154 to i32
  %call280 = tail call ptr @skb_put(ptr noundef %152, i32 noundef %conv279) #8
  tail call fastcc void @rcv_mbox(ptr noundef %150, ptr noundef %call280)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then293)) #8
          to label %do.end301 [label %if.then293], !srcloc !511

if.then293:                                       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %is, align 4
  %name295 = getelementptr inbounds %struct.isar_hw, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %name295 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name295, align 4
  %159 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rx_skb238, align 4
  %len298 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 6
  %161 = ptrtoint ptr %len298 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len298, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.28, ptr noundef %158, i32 noundef %162) #8
  br label %do.end301

do.end301:                                        ; preds = %if.then293, %if.then273
  %163 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %is, align 4
  %cmsb303 = getelementptr inbounds %struct.isar_hw, ptr %164, i32 0, i32 18
  %165 = ptrtoint ptr %cmsb303 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %cmsb303, align 2
  %167 = and i8 %166, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool306.not = icmp eq i8 %167, 0
  br i1 %tobool306.not, label %do.end301.if.end336_crit_edge, label %do.body308

do.end301.if.end336_crit_edge:                    ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end336

do.body308:                                       ; preds = %do.end301
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then320)) #8
          to label %do.end325 [label %if.then320], !srcloc !511

if.then320:                                       ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %is, align 4
  %name322 = getelementptr inbounds %struct.isar_hw, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %name322 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name322, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.29, ptr noundef %171) #8
  br label %do.end325

do.end325:                                        ; preds = %if.then320, %do.body308
  %172 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %is, align 4
  %write_reg327 = getelementptr inbounds %struct.isar_hw, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %write_reg327 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write_reg327, align 4
  %hw329 = getelementptr inbounds %struct.isar_hw, ptr %173, i32 0, i32 1
  %176 = ptrtoint ptr %hw329 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw329, align 4
  tail call void %175(ptr noundef %177, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %178 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %is, align 4
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %180 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %dpath, align 1
  %shl = shl i8 %181, 6
  %or = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %179, i8 noundef zeroext %or, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef null)
  %182 = ptrtoint ptr %state202 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 5, ptr %state202, align 1
  br label %if.end336

if.end336:                                        ; preds = %do.end325, %do.end301.if.end336_crit_edge
  tail call void @recv_Bchannel(ptr noundef %ch, i32 noundef 0, i1 noundef zeroext false) #8
  %183 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %is, align 4
  %cmsb339 = getelementptr inbounds %struct.isar_hw, ptr %184, i32 0, i32 18
  %185 = ptrtoint ptr %cmsb339 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %cmsb339, align 2
  %187 = and i8 %186, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool342.not = icmp eq i8 %187, 0
  br i1 %tobool342.not, label %if.end336.cleanup_crit_edge, label %if.then343

if.end336.cleanup_crit_edge:                      ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then343:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16402)
  br label %cleanup

do.body351:                                       ; preds = %if.end269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then363)) #8
          to label %do.end370 [label %if.then363], !srcloc !511

if.then363:                                       ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %is, align 4
  %name365 = getelementptr inbounds %struct.isar_hw, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %name365 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %name365, align 4
  %192 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %cmd, align 4
  %conv367 = zext i8 %193 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.30, ptr noundef %191, i32 noundef %conv367) #8
  br label %do.end370

do.end370:                                        ; preds = %if.then363, %do.body351
  %194 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %is, align 4
  %write_reg372 = getelementptr inbounds %struct.isar_hw, ptr %195, i32 0, i32 6
  %196 = ptrtoint ptr %write_reg372 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write_reg372, align 4
  %hw374 = getelementptr inbounds %struct.isar_hw, ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %hw374 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hw374, align 4
  tail call void %197(ptr noundef %199, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %200 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rx_skb238, align 4
  %tobool377.not = icmp eq ptr %201, null
  br i1 %tobool377.not, label %do.end370.cleanup_crit_edge, label %if.then378

do.end370.cleanup_crit_edge:                      ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then378:                                       ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %201, i32 noundef 0) #8
  br label %cleanup

if.end382:                                        ; preds = %if.end269
  %202 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rx_skb238, align 4
  %len385 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 6
  %204 = ptrtoint ptr %len385 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %len385, align 4
  %206 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %is, align 4
  %clsb387 = getelementptr inbounds %struct.isar_hw, ptr %207, i32 0, i32 19
  %208 = ptrtoint ptr %clsb387 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %clsb387, align 1
  %conv388 = zext i8 %209 to i32
  %add389 = add i32 %205, %conv388
  %maxlen391 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 10
  %210 = ptrtoint ptr %maxlen391 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %maxlen391, align 4
  %conv392 = zext i16 %211 to i32
  %add393 = add nuw nsw i32 %conv392, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add389, i32 %add393)
  %cmp394 = icmp ugt i32 %add389, %add393
  br i1 %cmp394, label %do.end399, label %if.else

do.end399:                                        ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #10
  %name402 = getelementptr inbounds %struct.isar_hw, ptr %207, i32 0, i32 3
  %212 = ptrtoint ptr %name402 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %name402, align 4
  %call403 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %213, ptr noundef nonnull @.str.16) #11
  %214 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %is, align 4
  %write_reg405 = getelementptr inbounds %struct.isar_hw, ptr %215, i32 0, i32 6
  %216 = ptrtoint ptr %write_reg405 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write_reg405, align 4
  %hw407 = getelementptr inbounds %struct.isar_hw, ptr %215, i32 0, i32 1
  %218 = ptrtoint ptr %hw407 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw407, align 4
  tail call void %217(ptr noundef %219, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %220 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rx_skb238, align 4
  tail call void @skb_trim(ptr noundef %221, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %if.end382
  %cmsb411 = getelementptr inbounds %struct.isar_hw, ptr %207, i32 0, i32 18
  %222 = ptrtoint ptr %cmsb411 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %cmsb411, align 2
  %conv412 = zext i8 %223 to i32
  %and413 = and i32 %conv412, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and413)
  %tobool414.not = icmp eq i32 %and413, 0
  br i1 %tobool414.not, label %if.end436, label %do.end418

do.end418:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %name421 = getelementptr inbounds %struct.isar_hw, ptr %207, i32 0, i32 3
  %224 = ptrtoint ptr %name421 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %name421, align 4
  %call428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %225, i32 noundef %conv412, i32 noundef %conv388) #11
  %226 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rx_skb238, align 4
  tail call void @skb_trim(ptr noundef %227, i32 noundef 0) #8
  %228 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %is, align 4
  %write_reg432 = getelementptr inbounds %struct.isar_hw, ptr %229, i32 0, i32 6
  %230 = ptrtoint ptr %write_reg432 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write_reg432, align 4
  %hw434 = getelementptr inbounds %struct.isar_hw, ptr %229, i32 0, i32 1
  %232 = ptrtoint ptr %hw434 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw434, align 4
  tail call void %231(ptr noundef %233, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

if.end436:                                        ; preds = %if.else
  %and440 = and i32 %conv412, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440)
  %tobool441.not = icmp eq i32 %and440, 0
  br i1 %tobool441.not, label %if.end436.if.end445_crit_edge, label %if.then442

if.end436.if.end445_crit_edge:                    ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end445

if.then442:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %203, i32 noundef 0) #8
  br label %if.end445

if.end445:                                        ; preds = %if.then442, %if.end436.if.end445_crit_edge
  %234 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rx_skb238, align 4
  %236 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %is, align 4
  %clsb449 = getelementptr inbounds %struct.isar_hw, ptr %237, i32 0, i32 19
  %238 = ptrtoint ptr %clsb449 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %clsb449, align 1
  %conv450 = zext i8 %239 to i32
  %call451 = tail call ptr @skb_put(ptr noundef %235, i32 noundef %conv450) #8
  %240 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %is, align 4
  tail call fastcc void @rcv_mbox(ptr noundef %241, ptr noundef %call451)
  %242 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %is, align 4
  %cmsb454 = getelementptr inbounds %struct.isar_hw, ptr %243, i32 0, i32 18
  %244 = ptrtoint ptr %cmsb454 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %cmsb454, align 2
  %246 = and i8 %245, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool457.not = icmp eq i8 %246, 0
  br i1 %tobool457.not, label %if.end445.if.end485_crit_edge, label %if.then458

if.end445.if.end485_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end485

if.then458:                                       ; preds = %if.end445
  %247 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rx_skb238, align 4
  %len461 = getelementptr inbounds %struct.sk_buff, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %len461 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %len461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp462 = icmp ult i32 %250, 3
  br i1 %cmp462, label %do.end467, label %if.end477

do.end467:                                        ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #10
  %name470 = getelementptr inbounds %struct.isar_hw, ptr %243, i32 0, i32 3
  %251 = ptrtoint ptr %name470 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %name470, align 4
  %call474 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %252, i32 noundef %250) #11
  %253 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rx_skb238, align 4
  tail call void @skb_trim(ptr noundef %254, i32 noundef 0) #8
  br label %cleanup

if.end477:                                        ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #10
  %sub483 = add i32 %250, -2
  tail call void @skb_trim(ptr noundef %248, i32 noundef %sub483) #8
  tail call void @recv_Bchannel(ptr noundef %ch, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end485

if.end485:                                        ; preds = %if.end477, %if.end445.if.end485_crit_edge
  %255 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %is, align 4
  %cmsb487 = getelementptr inbounds %struct.isar_hw, ptr %256, i32 0, i32 18
  %257 = ptrtoint ptr %cmsb487 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %cmsb487, align 2
  %259 = and i8 %258, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool490.not = icmp eq i8 %259, 0
  br i1 %tobool490.not, label %if.end485.cleanup_crit_edge, label %do.body492

if.end485.cleanup_crit_edge:                      ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body492:                                       ; preds = %if.end485
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_rcv_frame.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_rcv_frame, %if.then504)) #8
          to label %do.end509 [label %if.then504], !srcloc !511

if.then504:                                       ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %is, align 4
  %name506 = getelementptr inbounds %struct.isar_hw, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %name506 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name506, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_rcv_frame.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.29, ptr noundef %263) #8
  br label %do.end509

do.end509:                                        ; preds = %if.then504, %do.body492
  %264 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %is, align 4
  %write_reg511 = getelementptr inbounds %struct.isar_hw, ptr %265, i32 0, i32 6
  %266 = ptrtoint ptr %write_reg511 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write_reg511, align 4
  %hw513 = getelementptr inbounds %struct.isar_hw, ptr %265, i32 0, i32 1
  %268 = ptrtoint ptr %hw513 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw513, align 4
  tail call void %267(ptr noundef %269, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  %270 = ptrtoint ptr %rx_skb238 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rx_skb238, align 4
  %tobool516.not = icmp eq ptr %271, null
  br i1 %tobool516.not, label %do.end509.if.end520_crit_edge, label %if.then517

do.end509.if.end520_crit_edge:                    ; preds = %do.end509
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end520

if.then517:                                       ; preds = %do.end509
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %271, i32 noundef 0) #8
  br label %if.end520

if.end520:                                        ; preds = %if.then517, %do.end509.if.end520_crit_edge
  %272 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %is, align 4
  %dpath522 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %274 = ptrtoint ptr %dpath522 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %dpath522, align 1
  %shl524 = shl i8 %275, 6
  %or526 = or i8 %shl524, 42
  tail call fastcc void @send_mbox(ptr noundef %273, i8 noundef zeroext %or526, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef null)
  %276 = ptrtoint ptr %state202 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 5, ptr %state202, align 1
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16402)
  br label %cleanup

do.end533:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %24) #11
  %277 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %is, align 4
  %write_reg539 = getelementptr inbounds %struct.isar_hw, ptr %278, i32 0, i32 6
  %279 = ptrtoint ptr %write_reg539 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write_reg539, align 4
  %hw541 = getelementptr inbounds %struct.isar_hw, ptr %278, i32 0, i32 1
  %281 = ptrtoint ptr %hw541 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hw541, align 4
  tail call void %280(ptr noundef %282, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end533, %if.end520, %if.end485.cleanup_crit_edge, %do.end467, %do.end418, %do.end399, %if.then378, %do.end370.cleanup_crit_edge, %if.then343, %if.end336.cleanup_crit_edge, %do.end261, %if.then232, %do.end224.cleanup_crit_edge, %if.end193, %do.end190, %if.end151.cleanup_crit_edge, %do.end135, %do.end92, %if.end73, %do.end60, %do.end45, %if.then11, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_send(ptr noundef %isar, i8 noundef zeroext %rdm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_send.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_send, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %conv = zext i8 %rdm to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_send.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.51, ptr noundef %1, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %rdm to i32
  %and = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end21_crit_edge, label %if.then5

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then5:                                         ; preds = %do.end
  %dpath2.i = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 4
  %2 = ptrtoint ptr %dpath2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpath2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp5.i = icmp eq i8 %3, 1
  br i1 %cmp5.i, label %if.then5.sel_bch_isar.exit_crit_edge, label %if.end8.i

if.then5.sel_bch_isar.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit

if.end8.i:                                        ; preds = %if.then5
  %dpath9.i = getelementptr %struct.isar_ch, ptr %isar, i32 1, i32 4
  %4 = ptrtoint ptr %dpath9.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpath9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp12.i = icmp eq i8 %5, 1
  %incdec.ptr.i = getelementptr %struct.isar_ch, ptr %isar, i32 1
  br i1 %cmp12.i, label %if.end8.i.sel_bch_isar.exit_crit_edge, label %if.end8.i.if.end21_crit_edge

if.end8.i.if.end21_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end8.i.sel_bch_isar.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit

sel_bch_isar.exit:                                ; preds = %if.end8.i.sel_bch_isar.exit_crit_edge, %if.then5.sel_bch_isar.exit_crit_edge
  %retval.0.i70 = phi ptr [ %isar, %if.then5.sel_bch_isar.exit_crit_edge ], [ %incdec.ptr.i, %if.end8.i.sel_bch_isar.exit_crit_edge ]
  %tobool7.not = icmp eq ptr %retval.0.i70, null
  br i1 %tobool7.not, label %sel_bch_isar.exit.if.end21_crit_edge, label %land.lhs.true

sel_bch_isar.exit.if.end21_crit_edge:             ; preds = %sel_bch_isar.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %sel_bch_isar.exit
  %Flags = getelementptr inbounds %struct.bchannel, ptr %retval.0.i70, i32 0, i32 2
  %6 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end21_crit_edge, label %if.then10

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %land.lhs.true
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %retval.0.i70, i32 0, i32 17
  %9 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skb, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then10.if.else_crit_edge, label %land.lhs.true13

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true13:                                  ; preds = %if.then10
  %len = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %retval.0.i70, i32 0, i32 20
  %13 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp ugt i32 %12, %14
  br i1 %cmp, label %if.then18, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_fill_fifo(ptr noundef nonnull %retval.0.i70)
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %if.then10.if.else_crit_edge
  tail call fastcc void @send_next(ptr noundef nonnull %retval.0.i70)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18, %land.lhs.true.if.end21_crit_edge, %sel_bch_isar.exit.if.end21_crit_edge, %if.end8.i.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %and23 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end49_crit_edge, label %if.then25

if.end21.if.end49_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then25:                                        ; preds = %if.end21
  %dpath2.i71 = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 4
  %15 = ptrtoint ptr %dpath2.i71 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dpath2.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp5.i72 = icmp eq i8 %16, 2
  br i1 %cmp5.i72, label %if.then25.sel_bch_isar.exit79_crit_edge, label %if.end8.i77

if.then25.sel_bch_isar.exit79_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit79

if.end8.i77:                                      ; preds = %if.then25
  %dpath9.i73 = getelementptr %struct.isar_ch, ptr %isar, i32 1, i32 4
  %17 = ptrtoint ptr %dpath9.i73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dpath9.i73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp12.i74 = icmp eq i8 %18, 2
  %incdec.ptr.i75 = getelementptr %struct.isar_ch, ptr %isar, i32 1
  br i1 %cmp12.i74, label %if.end8.i77.sel_bch_isar.exit79_crit_edge, label %if.end8.i77.if.end49_crit_edge

if.end8.i77.if.end49_crit_edge:                   ; preds = %if.end8.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end8.i77.sel_bch_isar.exit79_crit_edge:        ; preds = %if.end8.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sel_bch_isar.exit79

sel_bch_isar.exit79:                              ; preds = %if.end8.i77.sel_bch_isar.exit79_crit_edge, %if.then25.sel_bch_isar.exit79_crit_edge
  %retval.0.i78 = phi ptr [ %isar, %if.then25.sel_bch_isar.exit79_crit_edge ], [ %incdec.ptr.i75, %if.end8.i77.sel_bch_isar.exit79_crit_edge ]
  %tobool27.not = icmp eq ptr %retval.0.i78, null
  br i1 %tobool27.not, label %sel_bch_isar.exit79.if.end49_crit_edge, label %land.lhs.true28

sel_bch_isar.exit79.if.end49_crit_edge:           ; preds = %sel_bch_isar.exit79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true28:                                  ; preds = %sel_bch_isar.exit79
  %Flags30 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i78, i32 0, i32 2
  %19 = ptrtoint ptr %Flags30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %Flags30, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool32.not = icmp eq i32 %21, 0
  br i1 %tobool32.not, label %land.lhs.true28.if.end49_crit_edge, label %if.then33

land.lhs.true28.if.end49_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then33:                                        ; preds = %land.lhs.true28
  %tx_skb35 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i78, i32 0, i32 17
  %22 = ptrtoint ptr %tx_skb35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_skb35, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %if.then33.if.else46_crit_edge, label %land.lhs.true37

if.then33.if.else46_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46

land.lhs.true37:                                  ; preds = %if.then33
  %len40 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len40, align 4
  %tx_idx42 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i78, i32 0, i32 20
  %26 = ptrtoint ptr %tx_idx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_idx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp43 = icmp ugt i32 %25, %27
  br i1 %cmp43, label %if.then45, label %land.lhs.true37.if.else46_crit_edge

land.lhs.true37.if.else46_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46

if.then45:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_fill_fifo(ptr noundef nonnull %retval.0.i78)
  br label %if.end49

if.else46:                                        ; preds = %land.lhs.true37.if.else46_crit_edge, %if.then33.if.else46_crit_edge
  tail call fastcc void @send_next(ptr noundef nonnull %retval.0.i78)
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then45, %land.lhs.true28.if.end49_crit_edge, %sel_bch_isar.exit79.if.end49_crit_edge, %if.end8.i77.if.end49_crit_edge, %if.end21.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  %buf = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 20
  %spec.select = select i1 %tobool.not, ptr %buf, ptr %msg
  %write_reg = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %hw = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void %1(ptr noundef %3, i8 noundef zeroext 72, i8 noundef zeroext 0) #8
  %tobool1.not = icmp eq ptr %spec.select, null
  br i1 %tobool1.not, label %entry.if.end24_crit_edge, label %land.lhs.true

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %clsb = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %4 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end24_crit_edge, label %if.then3

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then3:                                         ; preds = %land.lhs.true
  %conv = zext i8 %5 to i32
  %read_fifo = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 7
  %6 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_fifo, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void %7(ptr noundef %9, i8 noundef zeroext 76, ptr noundef nonnull %spec.select, i32 noundef %conv) #8
  %debug = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 21
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then3.if.end24_crit_edge, label %while.cond.preheader

if.then3.if.end24_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

while.cond.preheader:                             ; preds = %if.then3
  %12 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp50.not = icmp eq i8 %13, 0
  br i1 %cmp50.not, label %while.cond.preheader.if.end24_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end24_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv1049 = zext i8 %13 to i32
  %log = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 21
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %conv1053 = phi i32 [ %conv1049, %while.body.lr.ph ], [ %conv10, %do.end.while.body_crit_edge ]
  %l.051 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %spec.select, i32 %l.051
  %sub = sub nsw i32 %conv1053, %l.051
  %call = tail call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 32, i32 noundef 1, ptr noundef %log, i32 noundef 256, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcv_mbox.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcv_mbox, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !511

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcv_mbox.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.45, ptr noundef %15, ptr noundef nonnull @.str.65, i32 noundef %l.051, ptr noundef %log) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %while.body
  %add = add nuw nsw i32 %l.051, 32
  %16 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clsb, align 1
  %conv10 = zext i8 %17 to i32
  %cmp = icmp ult i32 %add, %conv10
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end24:                                         ; preds = %do.end.if.end24_crit_edge, %while.cond.preheader.if.end24_crit_edge, %if.then3.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  tail call void %19(ptr noundef %21, i8 noundef zeroext 88, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_pump_statev_modem(ptr noundef readonly %ch, i8 noundef zeroext %devt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpath, align 1
  %shl = shl i8 %1, 6
  %2 = zext i8 %devt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %devt, label %do.end246 [
    i8 2, label %do.body
    i8 24, label %do.body6
    i8 25, label %do.body25
    i8 32, label %do.body48
    i8 33, label %do.body67
    i8 34, label %do.body86
    i8 35, label %do.body105
    i8 36, label %do.body131
    i8 37, label %do.body150
    i8 38, label %do.body169
    i8 -52, label %do.body188
    i8 -51, label %do.body207
    i8 -44, label %do.body226
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !511

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.67, ptr noundef %6) #8
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then18)) #8
          to label %do.end23 [label %if.then18], !srcloc !511

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %is19 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %is19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is19, align 4
  %name20 = getelementptr inbounds %struct.isar_hw, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.68, ptr noundef %10) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %is.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %is.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %is.i, align 4
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %14, i32 noundef 16400) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end23
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %15 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %do.end.i.sw.epilog_crit_edge, label %if.end.i.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %do.end.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.sw.epilog_crit_edge, label %if.end.i.i.i, !prof !512

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 2050, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 16400, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %23 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %recv.i.i, align 4
  %25 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %24(ptr noundef %26, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i.sw.epilog_crit_edge, label %if.then7.i.i

if.end.i.i.i.sw.epilog_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then37)) #8
          to label %do.end42 [label %if.then37], !srcloc !511

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %is38 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %27 = ptrtoint ptr %is38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %is38, align 4
  %name39 = getelementptr inbounds %struct.isar_hw, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name39, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.69, ptr noundef %30) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body25
  %is43 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %31 = ptrtoint ptr %is43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %is43, align 4
  %33 = or i8 %shl, 14
  tail call fastcc void @send_mbox(ptr noundef %32, i8 noundef zeroext %33, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then.i311)) #8
          to label %do.end.i314 [label %if.then.i311], !srcloc !511

if.then.i311:                                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %is43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %is43, align 4
  %name.i310 = getelementptr inbounds %struct.isar_hw, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %name.i310 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i310, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %37, i32 noundef 16402) #8
  br label %do.end.i314

do.end.i314:                                      ; preds = %if.then.i311, %do.end42
  %peer.i.i312 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %38 = ptrtoint ptr %peer.i.i312 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peer.i.i312, align 4
  %tobool.not.i.i313 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i313, label %do.end.i314.sw.epilog_crit_edge, label %if.end.i.i317

do.end.i314.sw.epilog_crit_edge:                  ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i317:                                    ; preds = %do.end.i314
  %call.i.i.i.i.i315 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i316 = icmp eq ptr %call.i.i.i.i.i315, null
  br i1 %tobool.not.i.i.i.i316, label %if.end.i.i317.sw.epilog_crit_edge, label %if.end.i.i.i327, !prof !512

if.end.i.i317.sw.epilog_crit_edge:                ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i.i327:                                  ; preds = %if.end.i.i317
  %data.i.i.i.i.i318 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i315, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i.i.i318, align 4
  %add.ptr.i.i.i.i.i319 = getelementptr i8, ptr %41, i32 8
  store ptr %add.ptr.i.i.i.i.i319, ptr %data.i.i.i.i.i318, align 4
  %tail.i.i.i.i.i320 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i315, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i.i.i320, align 8
  %add.ptr1.i.i.i.i.i321 = getelementptr i8, ptr %43, i32 8
  store ptr %add.ptr1.i.i.i.i.i321, ptr %tail.i.i.i.i.i320, align 8
  %cb.i.i.i322 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i315, i32 0, i32 3
  %44 = ptrtoint ptr %cb.i.i.i322 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 2050, ptr %cb.i.i.i322, align 1
  %id6.i.i.i323 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i315, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %id6.i.i.i323 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 16402, ptr %id6.i.i.i323, align 1
  %recv.i.i324 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %46 = ptrtoint ptr %recv.i.i324 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %recv.i.i324, align 4
  %48 = ptrtoint ptr %peer.i.i312 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peer.i.i312, align 4
  %call5.i.i325 = tail call i32 %47(ptr noundef %49, ptr noundef nonnull %call.i.i.i.i.i315) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i325)
  %tobool6.not.i.i326 = icmp eq i32 %call5.i.i325, 0
  br i1 %tobool6.not.i.i326, label %if.end.i.i.i327.sw.epilog_crit_edge, label %if.then7.i.i328

if.end.i.i.i327.sw.epilog_crit_edge:              ; preds = %if.end.i.i.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7.i.i328:                                  ; preds = %if.end.i.i.i327
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i315) #8
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then60)) #8
          to label %sw.epilog [label %if.then60], !srcloc !511

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %is61 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %50 = ptrtoint ptr %is61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %is61, align 4
  %name62 = getelementptr inbounds %struct.isar_hw, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name62, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.70, ptr noundef %53) #8
  br label %sw.epilog

do.body67:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then79)) #8
          to label %sw.epilog [label %if.then79], !srcloc !511

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %is80 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %54 = ptrtoint ptr %is80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %is80, align 4
  %name81 = getelementptr inbounds %struct.isar_hw, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name81, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.71, ptr noundef %57) #8
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then98)) #8
          to label %sw.epilog [label %if.then98], !srcloc !511

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %is99 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %58 = ptrtoint ptr %is99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %is99, align 4
  %name100 = getelementptr inbounds %struct.isar_hw, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %name100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name100, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.72, ptr noundef %61) #8
  br label %sw.epilog

do.body105:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then117)) #8
          to label %do.end122 [label %if.then117], !srcloc !511

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %is118 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %62 = ptrtoint ptr %is118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %is118, align 4
  %name119 = getelementptr inbounds %struct.isar_hw, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name119, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.73, ptr noundef %65) #8
  br label %do.end122

do.end122:                                        ; preds = %if.then117, %do.body105
  %is123 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %66 = ptrtoint ptr %is123 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %is123, align 4
  %Flags = getelementptr inbounds %struct.isar_hw, ptr %67, i32 0, i32 14
  %call124 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %Flags) #8
  %68 = ptrtoint ptr %is123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %is123, align 4
  %70 = or i8 %shl, 14
  tail call fastcc void @send_mbox(ptr noundef %69, i8 noundef zeroext %70, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
  br label %sw.epilog

do.body131:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then143)) #8
          to label %sw.epilog [label %if.then143], !srcloc !511

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  %is144 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %71 = ptrtoint ptr %is144 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %is144, align 4
  %name145 = getelementptr inbounds %struct.isar_hw, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %name145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name145, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.74, ptr noundef %74) #8
  br label %sw.epilog

do.body150:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then162)) #8
          to label %sw.epilog [label %if.then162], !srcloc !511

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  %is163 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %75 = ptrtoint ptr %is163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %is163, align 4
  %name164 = getelementptr inbounds %struct.isar_hw, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name164, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.75, ptr noundef %78) #8
  br label %sw.epilog

do.body169:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then181)) #8
          to label %sw.epilog [label %if.then181], !srcloc !511

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  %is182 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %79 = ptrtoint ptr %is182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %is182, align 4
  %name183 = getelementptr inbounds %struct.isar_hw, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %name183 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name183, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.76, ptr noundef %82) #8
  br label %sw.epilog

do.body188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then200)) #8
          to label %sw.epilog [label %if.then200], !srcloc !511

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  %is201 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %83 = ptrtoint ptr %is201 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %is201, align 4
  %name202 = getelementptr inbounds %struct.isar_hw, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %name202 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name202, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.77, ptr noundef %86) #8
  br label %sw.epilog

do.body207:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then219)) #8
          to label %sw.epilog [label %if.then219], !srcloc !511

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  %is220 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %87 = ptrtoint ptr %is220 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %is220, align 4
  %name221 = getelementptr inbounds %struct.isar_hw, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %name221 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name221, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.78, ptr noundef %90) #8
  br label %sw.epilog

do.body226:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_modem, %if.then238)) #8
          to label %sw.epilog [label %if.then238], !srcloc !511

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  %is239 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %91 = ptrtoint ptr %is239 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %is239, align 4
  %name240 = getelementptr inbounds %struct.isar_hw, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %name240 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name240, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_modem.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.79, ptr noundef %94) #8
  br label %sw.epilog

do.end246:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = zext i8 %devt to i32
  %is248 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %95 = ptrtoint ptr %is248 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %is248, align 4
  %name249 = getelementptr inbounds %struct.isar_hw, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %name249 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name249, align 4
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %98, i32 noundef %conv2) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end246, %if.then238, %do.body226, %if.then219, %do.body207, %if.then200, %do.body188, %if.then181, %do.body169, %if.then162, %do.body150, %if.then143, %do.body131, %do.end122, %if.then98, %do.body86, %if.then79, %do.body67, %if.then60, %do.body48, %if.then7.i.i328, %if.end.i.i.i327.sw.epilog_crit_edge, %if.end.i.i317.sw.epilog_crit_edge, %do.end.i314.sw.epilog_crit_edge, %if.then7.i.i, %if.end.i.i.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %do.end.i.sw.epilog_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_pump_statev_fax(ptr noundef %ch, i8 noundef zeroext %devt) unnamed_addr #1 align 64 {
entry:
  %p1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpath, align 1
  %shl = shl i8 %1, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p1) #8
  %2 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %p1, align 1, !annotation !513
  %3 = zext i8 %devt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.237)
  switch i8 %devt, label %entry.sw.epilog546_crit_edge [
    i8 2, label %do.body
    i8 -68, label %do.body6
    i8 -77, label %sw.bb24
    i8 -79, label %sw.bb73
    i8 -78, label %sw.bb125
    i8 -80, label %sw.bb177
    i8 -75, label %sw.bb229
    i8 -70, label %do.body304
    i8 -73, label %do.body323
    i8 -66, label %do.body425
    i8 -85, label %do.body465
    i8 -71, label %sw.bb483
  ]

entry.sw.epilog546_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then)) #8
          to label %sw.epilog546 [label %if.then], !srcloc !511

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.67, ptr noundef %7) #8
  br label %sw.epilog546

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then18)) #8
          to label %do.end23 [label %if.then18], !srcloc !511

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %is19 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %8 = ptrtoint ptr %is19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is19, align 4
  %name20 = getelementptr inbounds %struct.isar_hw, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.82, ptr noundef %11) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  %state = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %state, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %is.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %is.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is.i, align 4
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %16, i32 noundef 16404) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end23
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %17 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %do.end.i.sw.epilog546_crit_edge, label %if.end.i.i

do.end.i.sw.epilog546_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.end.i.i:                                       ; preds = %do.end.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.sw.epilog546_crit_edge, label %if.end.i.i.i, !prof !512

if.end.i.i.sw.epilog546_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 2050, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 16404, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %25 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recv.i.i, align 4
  %27 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %26(ptr noundef %28, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i.sw.epilog546_crit_edge, label %if.then7.i.i

if.end.i.i.i.sw.epilog546_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %sw.epilog546

sw.bb24:                                          ; preds = %entry
  %state25 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %29 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp = icmp eq i8 %30, 2
  br i1 %cmp, label %do.body29, label %do.body52

do.body29:                                        ; preds = %sw.bb24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then41)) #8
          to label %do.end46 [label %if.then41], !srcloc !511

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %is42 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %31 = ptrtoint ptr %is42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %is42, align 4
  %name43 = getelementptr inbounds %struct.isar_hw, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.83, ptr noundef %34) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body29
  %35 = ptrtoint ptr %state25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %state25, align 1
  %is48 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %36 = ptrtoint ptr %is48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %is48, align 4
  %38 = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %37, i8 noundef zeroext %38, i8 noundef zeroext -94, i8 noundef zeroext 0, ptr noundef null)
  br label %sw.epilog546

do.body52:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then64)) #8
          to label %sw.epilog546 [label %if.then64], !srcloc !511

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %is65 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %39 = ptrtoint ptr %is65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %is65, align 4
  %name66 = getelementptr inbounds %struct.isar_hw, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name66, align 4
  %43 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %state25, align 1
  %conv68 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.84, ptr noundef %42, i32 noundef %conv68) #8
  br label %sw.epilog546

sw.bb73:                                          ; preds = %entry
  %state74 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %45 = ptrtoint ptr %state74 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %state74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp76 = icmp eq i8 %46, 2
  br i1 %cmp76, label %do.body79, label %do.body104

do.body79:                                        ; preds = %sw.bb73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then91)) #8
          to label %do.end96 [label %if.then91], !srcloc !511

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %is92 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %47 = ptrtoint ptr %is92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %is92, align 4
  %name93 = getelementptr inbounds %struct.isar_hw, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.85, ptr noundef %50) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %do.body79
  %51 = ptrtoint ptr %state74 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %state74, align 1
  %is98 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %52 = ptrtoint ptr %is98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %is98, align 4
  %54 = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %53, i8 noundef zeroext %54, i8 noundef zeroext -94, i8 noundef zeroext 0, ptr noundef null)
  br label %sw.epilog546

do.body104:                                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then116)) #8
          to label %sw.epilog546 [label %if.then116], !srcloc !511

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  %is117 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %55 = ptrtoint ptr %is117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %is117, align 4
  %name118 = getelementptr inbounds %struct.isar_hw, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %name118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name118, align 4
  %59 = ptrtoint ptr %state74 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %state74, align 1
  %conv120 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.86, ptr noundef %58, i32 noundef %conv120) #8
  br label %sw.epilog546

sw.bb125:                                         ; preds = %entry
  %state126 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %61 = ptrtoint ptr %state126 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %state126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp128 = icmp eq i8 %62, 2
  br i1 %cmp128, label %do.body131, label %do.body156

do.body131:                                       ; preds = %sw.bb125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then143)) #8
          to label %do.end148 [label %if.then143], !srcloc !511

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  %is144 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %63 = ptrtoint ptr %is144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %is144, align 4
  %name145 = getelementptr inbounds %struct.isar_hw, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %name145 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name145, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.87, ptr noundef %66) #8
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %do.body131
  %67 = ptrtoint ptr %state126 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %state126, align 1
  %is150 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %68 = ptrtoint ptr %is150 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %is150, align 4
  %70 = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %69, i8 noundef zeroext %70, i8 noundef zeroext -94, i8 noundef zeroext 0, ptr noundef null)
  br label %sw.epilog546

do.body156:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then168)) #8
          to label %sw.epilog546 [label %if.then168], !srcloc !511

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  %is169 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %71 = ptrtoint ptr %is169 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %is169, align 4
  %name170 = getelementptr inbounds %struct.isar_hw, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %name170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name170, align 4
  %75 = ptrtoint ptr %state126 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %state126, align 1
  %conv172 = zext i8 %76 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.88, ptr noundef %74, i32 noundef %conv172) #8
  br label %sw.epilog546

sw.bb177:                                         ; preds = %entry
  %state178 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %77 = ptrtoint ptr %state178 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %state178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp180 = icmp eq i8 %78, 2
  br i1 %cmp180, label %do.body183, label %do.body208

do.body183:                                       ; preds = %sw.bb177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then195)) #8
          to label %do.end200 [label %if.then195], !srcloc !511

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %is196 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %79 = ptrtoint ptr %is196 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %is196, align 4
  %name197 = getelementptr inbounds %struct.isar_hw, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name197, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.89, ptr noundef %82) #8
  br label %do.end200

do.end200:                                        ; preds = %if.then195, %do.body183
  %83 = ptrtoint ptr %state178 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %state178, align 1
  %is202 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %84 = ptrtoint ptr %is202 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %is202, align 4
  %86 = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %85, i8 noundef zeroext %86, i8 noundef zeroext -94, i8 noundef zeroext 0, ptr noundef null)
  br label %sw.epilog546

do.body208:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then220)) #8
          to label %sw.epilog546 [label %if.then220], !srcloc !511

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #10
  %is221 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %87 = ptrtoint ptr %is221 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %is221, align 4
  %name222 = getelementptr inbounds %struct.isar_hw, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %name222 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name222, align 4
  %91 = ptrtoint ptr %state178 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %state178, align 1
  %conv224 = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.90, ptr noundef %90, i32 noundef %conv224) #8
  br label %sw.epilog546

sw.bb229:                                         ; preds = %entry
  %state230 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %93 = ptrtoint ptr %state230 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %state230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp232 = icmp eq i8 %94, 3
  br i1 %cmp232, label %do.body235, label %do.body282

do.body235:                                       ; preds = %sw.bb229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then247)) #8
          to label %do.end252 [label %if.then247], !srcloc !511

if.then247:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  %is248 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %95 = ptrtoint ptr %is248 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %is248, align 4
  %name249 = getelementptr inbounds %struct.isar_hw, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %name249 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name249, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.91, ptr noundef %98) #8
  br label %do.end252

do.end252:                                        ; preds = %if.then247, %do.body235
  %99 = ptrtoint ptr %state230 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %state230, align 1
  %is254 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %100 = ptrtoint ptr %is254 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %is254, align 4
  %Flags = getelementptr inbounds %struct.isar_hw, ptr %101, i32 0, i32 14
  %call255 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %Flags) #8
  %102 = ptrtoint ptr %is254 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %is254, align 4
  %104 = or i8 %shl, 14
  tail call fastcc void @send_mbox(ptr noundef %103, i8 noundef zeroext %104, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
  %cmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %105 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %106)
  %cmp262 = icmp eq i8 %106, -89
  br i1 %cmp262, label %if.then264, label %if.else279

if.then264:                                       ; preds = %do.end252
  %mod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %107 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %108)
  %cmp266 = icmp eq i8 %108, 3
  %Flags268 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call269 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %Flags268) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.then264.if.end273_crit_edge, label %if.then271

if.then264.if.end273_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then271:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  %ftimer = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 2
  %call272 = tail call i32 @del_timer(ptr noundef %ftimer) #8
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %if.then264.if.end273_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %div = select i1 %cmp266, i32 100, i32 20
  %add = add i32 %109, %div
  %ftimer274 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 2
  %expires = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add, ptr %expires, align 4
  %call277 = tail call i32 @_test_and_set_bit(i32 noundef 25, ptr noundef %Flags268) #8
  tail call void @add_timer(ptr noundef %ftimer274) #8
  br label %sw.epilog546

if.else279:                                       ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16400)
  br label %sw.epilog546

do.body282:                                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then294)) #8
          to label %sw.epilog546 [label %if.then294], !srcloc !511

if.then294:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #10
  %is295 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %111 = ptrtoint ptr %is295 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %is295, align 4
  %name296 = getelementptr inbounds %struct.isar_hw, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %name296 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name296, align 4
  %115 = ptrtoint ptr %state230 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %state230, align 1
  %conv298 = zext i8 %116 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.92, ptr noundef %114, i32 noundef %conv298) #8
  br label %sw.epilog546

do.body304:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then316)) #8
          to label %sw.epilog546 [label %if.then316], !srcloc !511

if.then316:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #10
  %is317 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %117 = ptrtoint ptr %is317 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %is317, align 4
  %name318 = getelementptr inbounds %struct.isar_hw, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %name318 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name318, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.93, ptr noundef %120) #8
  br label %sw.epilog546

do.body323:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then335)) #8
          to label %do.end342 [label %if.then335], !srcloc !511

if.then335:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #10
  %is336 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %121 = ptrtoint ptr %is336 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %is336, align 4
  %name337 = getelementptr inbounds %struct.isar_hw, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %name337 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name337, align 4
  %state338 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %125 = ptrtoint ptr %state338 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %state338, align 1
  %conv339 = zext i8 %126 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.94, ptr noundef %124, i32 noundef %conv339) #8
  br label %do.end342

do.end342:                                        ; preds = %if.then335, %do.body323
  %state343 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %127 = ptrtoint ptr %state343 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %state343, align 1
  %129 = zext i8 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.238)
  switch i8 %128, label %if.then419 [
    i8 5, label %if.then347
    i8 4, label %if.then398
    i8 6, label %do.end342.sw.epilog546_crit_edge
  ]

do.end342.sw.epilog546_crit_edge:                 ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.then347:                                       ; preds = %do.end342
  %130 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 5, ptr %p1, align 1
  %newcmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %131 = ptrtoint ptr %newcmd to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %newcmd, align 2
  %133 = zext i8 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.239)
  switch i8 %132, label %do.body373 [
    i8 0, label %sw.bb349
    i8 -88, label %sw.bb351
    i8 -89, label %if.then347.sw.bb352_crit_edge
    i8 -91, label %if.then347.sw.bb359_crit_edge
    i8 -90, label %if.then347.sw.bb359_crit_edge749
  ]

if.then347.sw.bb359_crit_edge749:                 ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb359

if.then347.sw.bb359_crit_edge:                    ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb359

if.then347.sw.bb352_crit_edge:                    ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb352

sw.bb349:                                         ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %state343 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %state343, align 1
  br label %sw.epilog546

sw.bb351:                                         ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 2, ptr %p1, align 1
  br label %sw.bb352

sw.bb352:                                         ; preds = %sw.bb351, %if.then347.sw.bb352_crit_edge
  %is353 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %136 = ptrtoint ptr %is353 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %is353, align 4
  %138 = or i8 %shl, 42
  call fastcc void @send_mbox(ptr noundef %137, i8 noundef zeroext %138, i8 noundef zeroext -84, i8 noundef zeroext 1, ptr noundef nonnull %p1)
  %139 = ptrtoint ptr %state343 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 6, ptr %state343, align 1
  br label %sw.epilog546

sw.bb359:                                         ; preds = %if.then347.sw.bb359_crit_edge, %if.then347.sw.bb359_crit_edge749
  %newmod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %140 = ptrtoint ptr %newmod to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %newmod, align 1
  %mod360 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %142 = ptrtoint ptr %mod360 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %mod360, align 1
  %143 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %141, ptr %p1, align 1
  store i8 0, ptr %newmod, align 1
  %cmd364 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %144 = ptrtoint ptr %cmd364 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %132, ptr %cmd364, align 4
  %145 = ptrtoint ptr %newcmd to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %newcmd, align 2
  %is366 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %146 = ptrtoint ptr %is366 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %is366, align 4
  %148 = or i8 %shl, 42
  call fastcc void @send_mbox(ptr noundef %147, i8 noundef zeroext %148, i8 noundef zeroext %132, i8 noundef zeroext 1, ptr noundef nonnull %p1)
  %149 = ptrtoint ptr %state343 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %state343, align 1
  %try_mod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %150 = ptrtoint ptr %try_mod to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 3, ptr %try_mod, align 4
  br label %sw.epilog546

do.body373:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then385)) #8
          to label %sw.epilog546 [label %if.then385], !srcloc !511

if.then385:                                       ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #10
  %is386 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %151 = ptrtoint ptr %is386 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %is386, align 4
  %name387 = getelementptr inbounds %struct.isar_hw, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %name387 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %name387, align 4
  %155 = ptrtoint ptr %newcmd to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %newcmd, align 2
  %conv389 = zext i8 %156 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.95, ptr noundef %154, i32 noundef %conv389) #8
  br label %sw.epilog546

if.then398:                                       ; preds = %do.end342
  %Flags400 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call401 = tail call i32 @_test_and_clear_bit(i32 noundef 24, ptr noundef %Flags400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %if.else404, label %if.then398.if.end412_crit_edge

if.then398.if.end412_crit_edge:                   ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end412

if.else404:                                       ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #10
  %cmd405 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %157 = ptrtoint ptr %cmd405 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %cmd405, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -90, i8 %158)
  %cmp407 = icmp eq i8 %158, -90
  %. = select i1 %cmp407, i32 16402, i32 16403
  br label %if.end412

if.end412:                                        ; preds = %if.else404, %if.then398.if.end412_crit_edge
  %.sink = phi i32 [ 16401, %if.then398.if.end412_crit_edge ], [ %., %if.else404 ]
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef %.sink)
  %159 = ptrtoint ptr %state343 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %state343, align 1
  br label %sw.epilog546

if.then419:                                       ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %state343 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %state343, align 1
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16403)
  br label %sw.epilog546

do.body425:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then437)) #8
          to label %do.end442 [label %if.then437], !srcloc !511

if.then437:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #10
  %is438 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %161 = ptrtoint ptr %is438 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %is438, align 4
  %name439 = getelementptr inbounds %struct.isar_hw, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %name439 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %name439, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.96, ptr noundef %164) #8
  br label %do.end442

do.end442:                                        ; preds = %if.then437, %do.body425
  %state443 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %165 = ptrtoint ptr %state443 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %state443, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %166)
  %cmp445 = icmp eq i8 %166, 6
  br i1 %cmp445, label %if.then447, label %do.end442.sw.epilog546_crit_edge

do.end442.sw.epilog546_crit_edge:                 ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.then447:                                       ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #10
  %newmod448 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %167 = ptrtoint ptr %newmod448 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %newmod448, align 1
  %mod449 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %169 = ptrtoint ptr %mod449 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %mod449, align 1
  %170 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %168, ptr %p1, align 1
  store i8 0, ptr %newmod448, align 1
  %newcmd452 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %171 = ptrtoint ptr %newcmd452 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %newcmd452, align 2
  %cmd453 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %173 = ptrtoint ptr %cmd453 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %cmd453, align 4
  store i8 0, ptr %newcmd452, align 2
  %is455 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %174 = ptrtoint ptr %is455 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %is455, align 4
  %176 = or i8 %shl, 42
  call fastcc void @send_mbox(ptr noundef %175, i8 noundef zeroext %176, i8 noundef zeroext %172, i8 noundef zeroext 1, ptr noundef nonnull %p1)
  %177 = ptrtoint ptr %state443 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %state443, align 1
  %try_mod462 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %178 = ptrtoint ptr %try_mod462 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 3, ptr %try_mod462, align 4
  br label %sw.epilog546

do.body465:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then477)) #8
          to label %sw.epilog546 [label %if.then477], !srcloc !511

if.then477:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #10
  %is478 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %179 = ptrtoint ptr %is478 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %is478, align 4
  %name479 = getelementptr inbounds %struct.isar_hw, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %name479 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name479, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.97, ptr noundef %182) #8
  br label %sw.epilog546

sw.bb483:                                         ; preds = %entry
  %state484 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %183 = ptrtoint ptr %state484 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %state484, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %184)
  %cmp486 = icmp eq i8 %184, 2
  br i1 %cmp486, label %do.body489, label %sw.bb483.do.body521_crit_edge

sw.bb483.do.body521_crit_edge:                    ; preds = %sw.bb483
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body521

do.body489:                                       ; preds = %sw.bb483
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then501)) #8
          to label %do.end508 [label %if.then501], !srcloc !511

if.then501:                                       ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #10
  %is502 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %185 = ptrtoint ptr %is502 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %is502, align 4
  %name503 = getelementptr inbounds %struct.isar_hw, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %name503 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name503, align 4
  %try_mod504 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %189 = ptrtoint ptr %try_mod504 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %try_mod504, align 4
  %conv505 = zext i8 %190 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.98, ptr noundef %188, i32 noundef %conv505) #8
  br label %do.end508

do.end508:                                        ; preds = %if.then501, %do.body489
  %try_mod509 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %191 = ptrtoint ptr %try_mod509 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %try_mod509, align 4
  %dec = add i8 %192, -1
  store i8 %dec, ptr %try_mod509, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool510.not = icmp eq i8 %192, 0
  br i1 %tobool510.not, label %do.end508.do.body521_crit_edge, label %if.then511

do.end508.do.body521_crit_edge:                   ; preds = %do.end508
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body521

if.then511:                                       ; preds = %do.end508
  call void @__sanitizer_cov_trace_pc() #10
  %is512 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %193 = ptrtoint ptr %is512 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %is512, align 4
  %195 = or i8 %shl, 42
  %cmd516 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %196 = ptrtoint ptr %cmd516 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %cmd516, align 4
  %mod517 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  tail call fastcc void @send_mbox(ptr noundef %194, i8 noundef zeroext %195, i8 noundef zeroext %197, i8 noundef zeroext 1, ptr noundef %mod517)
  br label %sw.epilog546

do.body521:                                       ; preds = %do.end508.do.body521_crit_edge, %sw.bb483.do.body521_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then533)) #8
          to label %do.end538 [label %if.then533], !srcloc !511

if.then533:                                       ; preds = %do.body521
  call void @__sanitizer_cov_trace_pc() #10
  %is534 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %198 = ptrtoint ptr %is534 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %is534, align 4
  %name535 = getelementptr inbounds %struct.isar_hw, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %name535 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name535, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_statev_fax.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.99, ptr noundef %201) #8
  br label %do.end538

do.end538:                                        ; preds = %if.then533, %do.body521
  %202 = ptrtoint ptr %state484 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 5, ptr %state484, align 1
  %is540 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %203 = ptrtoint ptr %is540 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %is540, align 4
  %205 = or i8 %shl, 42
  tail call fastcc void @send_mbox(ptr noundef %204, i8 noundef zeroext %205, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef null)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_statev_fax, %if.then.i711)) #8
          to label %do.end.i714 [label %if.then.i711], !srcloc !511

if.then.i711:                                     ; preds = %do.end538
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %is540 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %is540, align 4
  %name.i710 = getelementptr inbounds %struct.isar_hw, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %name.i710 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name.i710, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %209, i32 noundef 16403) #8
  br label %do.end.i714

do.end.i714:                                      ; preds = %if.then.i711, %do.end538
  %peer.i.i712 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %210 = ptrtoint ptr %peer.i.i712 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %peer.i.i712, align 4
  %tobool.not.i.i713 = icmp eq ptr %211, null
  br i1 %tobool.not.i.i713, label %do.end.i714.sw.epilog546_crit_edge, label %if.end.i.i717

do.end.i714.sw.epilog546_crit_edge:               ; preds = %do.end.i714
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.end.i.i717:                                    ; preds = %do.end.i714
  %call.i.i.i.i.i715 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i716 = icmp eq ptr %call.i.i.i.i.i715, null
  br i1 %tobool.not.i.i.i.i716, label %if.end.i.i717.sw.epilog546_crit_edge, label %if.end.i.i.i727, !prof !512

if.end.i.i717.sw.epilog546_crit_edge:             ; preds = %if.end.i.i717
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.end.i.i.i727:                                  ; preds = %if.end.i.i717
  %data.i.i.i.i.i718 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i715, i32 0, i32 19
  %212 = ptrtoint ptr %data.i.i.i.i.i718 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %data.i.i.i.i.i718, align 4
  %add.ptr.i.i.i.i.i719 = getelementptr i8, ptr %213, i32 8
  store ptr %add.ptr.i.i.i.i.i719, ptr %data.i.i.i.i.i718, align 4
  %tail.i.i.i.i.i720 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i715, i32 0, i32 16
  %214 = ptrtoint ptr %tail.i.i.i.i.i720 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %tail.i.i.i.i.i720, align 8
  %add.ptr1.i.i.i.i.i721 = getelementptr i8, ptr %215, i32 8
  store ptr %add.ptr1.i.i.i.i.i721, ptr %tail.i.i.i.i.i720, align 8
  %cb.i.i.i722 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i715, i32 0, i32 3
  %216 = ptrtoint ptr %cb.i.i.i722 to i32
  call void @__asan_storeN_noabort(i32 %216, i32 4)
  store i32 2050, ptr %cb.i.i.i722, align 1
  %id6.i.i.i723 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i715, i32 0, i32 3, i32 4
  %217 = ptrtoint ptr %id6.i.i.i723 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 16403, ptr %id6.i.i.i723, align 1
  %recv.i.i724 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %218 = ptrtoint ptr %recv.i.i724 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %recv.i.i724, align 4
  %220 = ptrtoint ptr %peer.i.i712 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %peer.i.i712, align 4
  %call5.i.i725 = tail call i32 %219(ptr noundef %221, ptr noundef nonnull %call.i.i.i.i.i715) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i725)
  %tobool6.not.i.i726 = icmp eq i32 %call5.i.i725, 0
  br i1 %tobool6.not.i.i726, label %if.end.i.i.i727.sw.epilog546_crit_edge, label %if.then7.i.i728

if.end.i.i.i727.sw.epilog546_crit_edge:           ; preds = %if.end.i.i.i727
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog546

if.then7.i.i728:                                  ; preds = %if.end.i.i.i727
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i715) #8
  br label %sw.epilog546

sw.epilog546:                                     ; preds = %if.then7.i.i728, %if.end.i.i.i727.sw.epilog546_crit_edge, %if.end.i.i717.sw.epilog546_crit_edge, %do.end.i714.sw.epilog546_crit_edge, %if.then511, %if.then477, %do.body465, %if.then447, %do.end442.sw.epilog546_crit_edge, %if.then419, %if.end412, %if.then385, %do.body373, %sw.bb359, %sw.bb352, %sw.bb349, %do.end342.sw.epilog546_crit_edge, %if.then316, %do.body304, %if.then294, %do.body282, %if.else279, %if.end273, %if.then220, %do.body208, %do.end200, %if.then168, %do.body156, %do.end148, %if.then116, %do.body104, %do.end96, %if.then64, %do.body52, %do.end46, %if.then7.i.i, %if.end.i.i.i.sw.epilog546_crit_edge, %if.end.i.i.sw.epilog546_crit_edge, %do.end.i.sw.epilog546_crit_edge, %if.then, %do.body, %entry.sw.epilog546_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p1) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_queue_data(ptr nocapture noundef readonly %ch, i32 noundef %prim, i32 noundef %id, i32 noundef %len, ptr nocapture noundef readonly %dp, i32 noundef %gfp_mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i.i = add i32 %len, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef %gfp_mask, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !512

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not.i = icmp eq i32 %len, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3_crit_edge, label %if.then2.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %len) #8
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %dp, i32 %len)
  br label %if.end3

if.end3:                                          ; preds = %if.then2.i, %if.end.i.if.end3_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %prim, ptr %cb.i, align 1
  %id6.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %id6.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %id, ptr %id6.i, align 1
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %9 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recv, align 4
  %11 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %peer, align 4
  %call5 = tail call i32 %10(ptr noundef %12, ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_pump_status_rsp(ptr noundef %ch) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %buf = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 4
  %Flags = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %3)
  %cmp = icmp ugt i8 %3, 14
  br i1 %cmp, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %7, i32 noundef %conv) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %ril.0 = phi i8 [ 15, %do.end ], [ %3, %if.end.if.end7_crit_edge ]
  %8 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is, align 4
  %arrayidx10 = getelementptr %struct.isar_hw, ptr %9, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %11, label %sw.default [
    i8 0, label %if.end7.sw.epilog_crit_edge
    i8 32, label %sw.bb12
    i8 64, label %sw.bb13
    i8 65, label %sw.bb14
    i8 81, label %sw.bb15
    i8 97, label %sw.bb16
    i8 113, label %sw.bb17
    i8 -126, label %sw.bb18
    i8 -110, label %sw.bb19
    i8 -94, label %sw.bb20
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %if.end7.sw.epilog_crit_edge
  %rim.0 = phi i32 [ 1, %sw.default ], [ 10, %sw.bb20 ], [ 9, %sw.bb19 ], [ 8, %sw.bb18 ], [ 7, %sw.bb17 ], [ 6, %sw.bb16 ], [ 5, %sw.bb15 ], [ 4, %sw.bb14 ], [ 3, %sw.bb13 ], [ 2, %sw.bb12 ], [ 0, %if.end7.sw.epilog_crit_edge ]
  %conmsg = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 12
  %idxprom = zext i8 %ril.0 to i32
  %arrayidx21 = getelementptr [16 x ptr], ptr @dmril, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr [11 x ptr], ptr @dmrim, i32 0, i32 %rim.0
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx23, align 4
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %conmsg, ptr noundef nonnull @.str.102, ptr noundef %14, ptr noundef %16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_status_rsp.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_status_rsp, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !511

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %is, align 4
  %name33 = getelementptr inbounds %struct.isar_hw, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_status_rsp.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.103, ptr noundef %20, ptr noundef %conmsg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDNisar_init(ptr noundef %isar, ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %hw1, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 1
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nr, align 4
  %call = tail call i32 @mISDN_initbchannel(ptr noundef %isar, i16 noundef zeroext 2056, i16 noundef zeroext 32) #8
  %nr10 = getelementptr inbounds %struct.mISDNchannel, ptr %isar, i32 0, i32 2
  %2 = ptrtoint ptr %nr10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr10, align 4
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %isar, i32 0, i32 7
  %3 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @isar_l2l1, ptr %send, align 4
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %isar, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @isar_bctrl, ptr %ctrl, align 4
  %hw22 = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 5
  %5 = ptrtoint ptr %hw22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %hw22, align 4
  %is = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %isar, ptr %is, align 4
  %arrayidx.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1
  %nr.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %nr.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %nr.1, align 4
  %call.1 = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.1, i16 noundef zeroext 2056, i16 noundef zeroext 32) #8
  %nr10.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %nr10.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %nr10.1, align 4
  %send.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 0, i32 7
  %9 = ptrtoint ptr %send.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @isar_l2l1, ptr %send.1, align 4
  %ctrl.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 0, i32 9
  %10 = ptrtoint ptr %ctrl.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @isar_bctrl, ptr %ctrl.1, align 4
  %hw22.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %hw22.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hw, ptr %hw22.1, align 4
  %is.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %is.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %isar, ptr %is.1, align 4
  %init = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 11
  %13 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @init_isar, ptr %init, align 4
  %release = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 10
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @free_isar, ptr %release, align 4
  %firmware = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 13
  %15 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @load_firmware, ptr %firmware, align 4
  %open = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 12
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @isar_open, ptr %open, align 4
  ret i32 406
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isar_l2l1(ptr noundef %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %1, label %entry.do.end210_crit_edge [
    i32 8193, label %do.body4
    i32 257, label %do.body16
    i32 513, label %do.body41
    i32 2049, label %sw.bb58
  ]

entry.do.end210_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

do.body4:                                         ; preds = %entry
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is, align 4
  %hwlock = getelementptr inbounds %struct.isar_hw, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwlock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %call9 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %do.body4.if.end_crit_edge

do.body4.if.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_fill_fifo(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body4.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call9, %do.body4.if.end_crit_edge ]
  %7 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is, align 4
  %hwlock13 = getelementptr inbounds %struct.isar_hw, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hwlock13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwlock13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call6) #8
  br label %cleanup

do.body16:                                        ; preds = %entry
  %is22 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %is22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %is22, align 4
  %hwlock23 = getelementptr inbounds %struct.isar_hw, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hwlock23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwlock23, align 4
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.then31, label %do.body16.if.end33_crit_edge

do.body16.if.end33_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %protocol, align 4
  %call32 = tail call fastcc i32 @modeisar(ptr noundef %ch, i32 noundef %16)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body16.if.end33_crit_edge
  %ret.1 = phi i32 [ %call32, %if.then31 ], [ 0, %do.body16.if.end33_crit_edge ]
  %17 = ptrtoint ptr %is22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %is22, align 4
  %hwlock35 = getelementptr inbounds %struct.isar_hw, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %hwlock35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwlock35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool36.not = icmp eq i32 %ret.1, 0
  br i1 %tobool36.not, label %if.then37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %21 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then37.if.then218_crit_edge, label %if.end.i

if.then37.if.then218_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

if.end.i:                                         ; preds = %if.then37
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then218_crit_edge, label %if.end.i.i, !prof !512

if.end.i.if.then218_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %29 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %recv.i, align 4
  %31 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %30(ptr noundef %32, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i.if.then218_crit_edge, label %if.end.i.i.if.then218.sink.split_crit_edge

if.end.i.i.if.then218.sink.split_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218.sink.split

if.end.i.i.if.then218_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

do.body41:                                        ; preds = %entry
  %is47 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %33 = ptrtoint ptr %is47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %is47, align 4
  %hwlock48 = getelementptr inbounds %struct.isar_hw, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %hwlock48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hwlock48, align 4
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #8
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #8
  %call55 = tail call fastcc i32 @modeisar(ptr noundef %ch, i32 noundef 0)
  %37 = ptrtoint ptr %is47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %is47, align 4
  %hwlock57 = getelementptr inbounds %struct.isar_hw, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %hwlock57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwlock57, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call50) #8
  %peer.i290 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %41 = ptrtoint ptr %peer.i290 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %peer.i290, align 4
  %tobool.not.i291 = icmp eq ptr %42, null
  br i1 %tobool.not.i291, label %do.body41.if.then218_crit_edge, label %if.end.i294

do.body41.if.then218_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

if.end.i294:                                      ; preds = %do.body41
  %call.i.i.i.i292 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i293 = icmp eq ptr %call.i.i.i.i292, null
  br i1 %tobool.not.i.i.i293, label %if.end.i294.if.then218_crit_edge, label %if.end.i.i299, !prof !512

if.end.i294.if.then218_crit_edge:                 ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

if.end.i.i299:                                    ; preds = %if.end.i294
  %data.i.i.i.i295 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i292, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i.i295, align 4
  %add.ptr.i.i.i.i296 = getelementptr i8, ptr %44, i32 8
  store ptr %add.ptr.i.i.i.i296, ptr %data.i.i.i.i295, align 4
  %tail.i.i.i.i297 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i292, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i.i297, align 8
  %add.ptr1.i.i.i.i298 = getelementptr i8, ptr %46, i32 8
  store ptr %add.ptr1.i.i.i.i298, ptr %tail.i.i.i.i297, align 8
  %cb.i.i300 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i292, i32 0, i32 3
  %47 = ptrtoint ptr %cb.i.i300 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 514, ptr %cb.i.i300, align 1
  %id6.i.i301 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i292, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %id6.i.i301 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 65535, ptr %id6.i.i301, align 1
  %recv.i302 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %49 = ptrtoint ptr %recv.i302 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %recv.i302, align 4
  %51 = ptrtoint ptr %peer.i290 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peer.i290, align 4
  %call5.i303 = tail call i32 %50(ptr noundef %52, ptr noundef nonnull %call.i.i.i.i292) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i303)
  %tobool6.not.i304 = icmp eq i32 %call5.i303, 0
  br i1 %tobool6.not.i304, label %if.end.i.i299.if.then218_crit_edge, label %if.end.i.i299.if.then218.sink.split_crit_edge

if.end.i.i299.if.then218.sink.split_crit_edge:    ; preds = %if.end.i.i299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218.sink.split

if.end.i.i299.if.then218_crit_edge:               ; preds = %if.end.i.i299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218

sw.bb58:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_l2l1.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_l2l1, %if.then65)) #8
          to label %do.end70 [label %if.then65], !srcloc !511

if.then65:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  %is66 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %55 = ptrtoint ptr %is66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %is66, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 4
  %id67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %id67 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %id67, align 1
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %54, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_l2l1.__UNIQUE_ID_ddebug535, ptr noundef nonnull @.str.132, ptr noundef %58, i32 noundef %60, i32 noundef %62) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %sw.bb58
  %id71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %63 = ptrtoint ptr %id71 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %id71, align 1
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %64, label %do.end70.do.end199_crit_edge [
    i32 0, label %land.lhs.true
    i32 16384, label %do.end70.if.then144_crit_edge
    i32 16385, label %do.end70.if.then144_crit_edge313
    i32 16386, label %do.end70.if.then144_crit_edge314
    i32 16387, label %do.end70.if.then144_crit_edge315
    i32 16405, label %if.then193
  ]

do.end70.if.then144_crit_edge315:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

do.end70.if.then144_crit_edge314:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

do.end70.if.then144_crit_edge313:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

do.end70.if.then144_crit_edge:                    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

do.end70.do.end199_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end199

land.lhs.true:                                    ; preds = %do.end70
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %54, align 4
  %and = and i32 %67, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp74 = icmp eq i32 %and, 8192
  br i1 %cmp74, label %if.then76, label %land.lhs.true.do.end199_crit_edge

land.lhs.true.do.end199_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end199

if.then76:                                        ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %69)
  %cmp77 = icmp eq i32 %69, 36
  br i1 %cmp77, label %if.then79, label %do.end124

if.then79:                                        ; preds = %if.then76
  %70 = trunc i32 %67 to i8
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %70, label %if.else91 [
    i8 42, label %if.then79.if.end100_crit_edge
    i8 35, label %if.then90
  ]

if.then79.if.end100_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then90:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.else91:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %70)
  %cmp93 = icmp ugt i8 %70, 57
  %sub = add nuw i8 %70, 25
  %spec.select = select i1 %cmp93, i8 %sub, i8 %70
  %phi.bo = and i8 %spec.select, 31
  br label %if.end100

if.end100:                                        ; preds = %if.else91, %if.then90, %if.then79.if.end100_crit_edge
  %tt.0 = phi i8 [ 31, %if.then90 ], [ 30, %if.then79.if.end100_crit_edge ], [ %phi.bo, %if.else91 ]
  %is111 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %72 = ptrtoint ptr %is111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %is111, align 4
  %hwlock112 = getelementptr inbounds %struct.isar_hw, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %hwlock112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwlock112, align 4
  %call114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #8
  tail call fastcc void @isar_pump_cmd(ptr noundef %ch, i32 noundef 90, i8 noundef zeroext %tt.0)
  %76 = ptrtoint ptr %is111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %is111, align 4
  %hwlock120 = getelementptr inbounds %struct.isar_hw, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %hwlock120 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwlock120, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %call114) #8
  br label %do.end210

do.end124:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.131, i32 noundef %69) #11
  br label %cleanup

if.then144:                                       ; preds = %do.end70.if.then144_crit_edge, %do.end70.if.then144_crit_edge313, %do.end70.if.then144_crit_edge314, %do.end70.if.then144_crit_edge315
  %80 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %54, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %81, label %if.then144.do.end183_crit_edge [
    i32 3, label %if.then144.land.lhs.true155.critedge_crit_edge
    i32 24, label %if.then144.land.lhs.true155.critedge_crit_edge316
    i32 48, label %if.then144.land.lhs.true155.critedge_crit_edge317
    i32 72, label %if.then144.land.lhs.true155.critedge_crit_edge318
    i32 73, label %if.then144.land.lhs.true155.critedge_crit_edge319
    i32 74, label %if.then144.land.lhs.true155.critedge_crit_edge320
    i32 96, label %if.then144.land.lhs.true155.critedge_crit_edge321
    i32 97, label %if.then144.land.lhs.true155.critedge_crit_edge322
    i32 98, label %if.then144.land.lhs.true155.critedge_crit_edge323
    i32 121, label %if.then144.land.lhs.true155.critedge_crit_edge324
    i32 122, label %if.then144.land.lhs.true155.critedge_crit_edge325
    i32 145, label %if.then144.land.lhs.true155.critedge_crit_edge326
    i32 146, label %if.then144.land.lhs.true155.critedge_crit_edge327
  ]

if.then144.land.lhs.true155.critedge_crit_edge327: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge326: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge325: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge324: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge323: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge322: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge321: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge320: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge319: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge318: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge317: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge316: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.land.lhs.true155.critedge_crit_edge:   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.critedge

if.then144.do.end183_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

land.lhs.true155.critedge:                        ; preds = %if.then144.land.lhs.true155.critedge_crit_edge, %if.then144.land.lhs.true155.critedge_crit_edge316, %if.then144.land.lhs.true155.critedge_crit_edge317, %if.then144.land.lhs.true155.critedge_crit_edge318, %if.then144.land.lhs.true155.critedge_crit_edge319, %if.then144.land.lhs.true155.critedge_crit_edge320, %if.then144.land.lhs.true155.critedge_crit_edge321, %if.then144.land.lhs.true155.critedge_crit_edge322, %if.then144.land.lhs.true155.critedge_crit_edge323, %if.then144.land.lhs.true155.critedge_crit_edge324, %if.then144.land.lhs.true155.critedge_crit_edge325, %if.then144.land.lhs.true155.critedge_crit_edge326, %if.then144.land.lhs.true155.critedge_crit_edge327
  %Flags156 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %83 = ptrtoint ptr %Flags156 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %Flags156, align 4
  %85 = and i32 %84, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool158.not = icmp eq i32 %85, 0
  br i1 %tobool158.not, label %land.lhs.true155.critedge.do.end183_crit_edge, label %do.body160

land.lhs.true155.critedge.do.end183_crit_edge:    ; preds = %land.lhs.true155.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

do.body160:                                       ; preds = %land.lhs.true155.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_l2l1.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_l2l1, %if.then172)) #8
          to label %do.end177 [label %if.then172], !srcloc !511

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  %is173 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %86 = ptrtoint ptr %is173 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %is173, align 4
  %name174 = getelementptr inbounds %struct.isar_hw, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %name174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name174, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_l2l1.__UNIQUE_ID_ddebug536, ptr noundef nonnull @.str.134, ptr noundef %89) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then172, %do.body160
  %90 = ptrtoint ptr %id71 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %id71, align 1
  %92 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %54, align 4
  %conv179 = trunc i32 %93 to i8
  tail call fastcc void @isar_pump_cmd(ptr noundef %ch, i32 noundef %91, i8 noundef zeroext %conv179)
  br label %do.end210

do.end183:                                        ; preds = %land.lhs.true155.critedge.do.end183_crit_edge, %if.then144.do.end183_crit_edge
  %is185 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %94 = ptrtoint ptr %is185 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %is185, align 4
  %name186 = getelementptr inbounds %struct.isar_hw, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %name186 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name186, align 4
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %97) #11
  br label %do.end210

if.then193:                                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  %Flags194 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call195 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %Flags194) #8
  br label %do.end210

do.end199:                                        ; preds = %land.lhs.true.do.end199_crit_edge, %do.end70.do.end199_crit_edge
  %is201 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %98 = ptrtoint ptr %is201 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %is201, align 4
  %name202 = getelementptr inbounds %struct.isar_hw, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %name202 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name202, align 4
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %101, i32 noundef %64) #11
  br label %do.end210

do.end210:                                        ; preds = %do.end199, %if.then193, %do.end183, %do.end177, %if.end100, %entry.do.end210_crit_edge
  %is212 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %102 = ptrtoint ptr %is212 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %is212, align 4
  %name213 = getelementptr inbounds %struct.isar_hw, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %name213 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name213, align 4
  %106 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %cb, align 1
  %id215 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %108 = ptrtoint ptr %id215 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %id215, align 1
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %105, ptr noundef nonnull @.str.131, i32 noundef %107, i32 noundef %109) #11
  br label %cleanup

if.then218.sink.split:                            ; preds = %if.end.i.i299.if.then218.sink.split_crit_edge, %if.end.i.i.if.then218.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end.i.i.if.then218.sink.split_crit_edge ], [ %call.i.i.i.i292, %if.end.i.i299.if.then218.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #8
  br label %if.then218

if.then218:                                       ; preds = %if.then218.sink.split, %if.end.i.i299.if.then218_crit_edge, %if.end.i294.if.then218_crit_edge, %do.body41.if.then218_crit_edge, %if.end.i.i.if.then218_crit_edge, %if.end.i.if.then218_crit_edge, %if.then37.if.then218_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then218, %do.end210, %do.end124, %if.end33.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ -22, %do.end124 ], [ %ret.0, %if.end ], [ 0, %if.then218 ], [ -22, %do.end210 ], [ %ret.1, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isar_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_bctrl.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_bctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_bctrl.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.156, ptr noundef %3, ptr noundef nonnull @.str.155, i32 noundef %cmd, ptr noundef %arg) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %cmd, label %do.end27 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #8
  %workq = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 3
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #8
  %is12 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %is12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is12, align 4
  %hwlock = getelementptr inbounds %struct.isar_hw, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwlock, align 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #8
  %call19 = tail call fastcc i32 @modeisar(ptr noundef %ch, i32 noundef 0)
  %9 = ptrtoint ptr %is12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is12, align 4
  %hwlock21 = getelementptr inbounds %struct.isar_hw, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %hwlock21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwlock21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call14) #8
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %peer, align 4
  %15 = ptrtoint ptr %is12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %is12, align 4
  %owner = getelementptr inbounds %struct.isar_hw, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %18) #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #8
  br label %sw.epilog

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %is29 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %19 = ptrtoint ptr %is29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %is29, align 4
  %name30 = getelementptr inbounds %struct.isar_hw, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %22, ptr noundef nonnull @.str.155, i32 noundef %cmd) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %sw.bb23, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end27 ], [ %call.i, %sw.bb23 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_isar(ptr noundef %isar) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %hw.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 20
  %arrayidx2.i = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 1
  %arrayidx4.i = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 2
  %iis.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 17
  %clsb.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %version = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 15
  %debug = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 21
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %ctrl = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 9
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  tail call void %1(ptr noundef %3, i8 noundef zeroext 117, i8 noundef zeroext 0) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %buf.i, align 4
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2.i, align 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx4.i, align 2
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef null) #8
  %call5.i = tail call fastcc i32 @poll_mbox(ptr noundef %isar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %entry.ISARVersion.exit_crit_edge, label %if.end8.i

entry.ISARVersion.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit

if.end8.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iis.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %8)
  %cmp.i = icmp eq i8 %8, 21
  br i1 %cmp.i, label %if.then10.i, label %if.end8.i.ISARVersion.exit_crit_edge

if.end8.i.ISARVersion.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit

if.then10.i:                                      ; preds = %if.end8.i
  %9 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp12.i = icmp eq i8 %10, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.then10.i.ISARVersion.exit_crit_edge

if.then10.i.ISARVersion.exit_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i, align 4
  %13 = and i8 %12, 15
  %and.i = zext i8 %13 to i32
  br label %ISARVersion.exit

ISARVersion.exit:                                 ; preds = %if.then14.i, %if.then10.i.ISARVersion.exit_crit_edge, %if.end8.i.ISARVersion.exit_crit_edge, %entry.ISARVersion.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.then14.i ], [ -2, %entry.ISARVersion.exit_crit_edge ], [ -3, %if.then10.i.ISARVersion.exit_crit_edge ], [ -4, %if.end8.i.ISARVersion.exit_crit_edge ]
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %version, align 4
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %ISARVersion.exit.if.end_crit_edge, label %do.end

ISARVersion.exit.if.end_crit_edge:                ; preds = %ISARVersion.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %ISARVersion.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %18, i32 noundef %retval.0.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %version, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %ISARVersion.exit.if.end_crit_edge
  %20 = phi i32 [ %.pr, %do.end ], [ %retval.0.i, %ISARVersion.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end6

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end6:                                          ; preds = %if.end
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl, align 4
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 4
  %call7 = tail call i32 %22(ptr noundef %24, i32 noundef 35330, i32 noundef 0) #8
  %25 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i, align 4
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  tail call void %26(ptr noundef %28, i8 noundef zeroext 117, i8 noundef zeroext 0) #8
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %buf.i, align 4
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx2.i, align 1
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx4.i, align 2
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef null) #8
  %call5.i.1 = tail call fastcc i32 @poll_mbox(ptr noundef %isar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.1)
  %tobool6.not.i.1 = icmp eq i32 %call5.i.1, 0
  br i1 %tobool6.not.i.1, label %if.end6.ISARVersion.exit.1_crit_edge, label %if.end8.i.1

if.end6.ISARVersion.exit.1_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.1

if.end8.i.1:                                      ; preds = %if.end6
  %32 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iis.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %33)
  %cmp.i.1 = icmp eq i8 %33, 21
  br i1 %cmp.i.1, label %if.then10.i.1, label %if.end8.i.1.ISARVersion.exit.1_crit_edge

if.end8.i.1.ISARVersion.exit.1_crit_edge:         ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.1

if.then10.i.1:                                    ; preds = %if.end8.i.1
  %34 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %clsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp12.i.1 = icmp eq i8 %35, 1
  br i1 %cmp12.i.1, label %if.then14.i.1, label %if.then10.i.1.ISARVersion.exit.1_crit_edge

if.then10.i.1.ISARVersion.exit.1_crit_edge:       ; preds = %if.then10.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.1

if.then14.i.1:                                    ; preds = %if.then10.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf.i, align 4
  %38 = and i8 %37, 15
  %and.i.1 = zext i8 %38 to i32
  br label %ISARVersion.exit.1

ISARVersion.exit.1:                               ; preds = %if.then14.i.1, %if.then10.i.1.ISARVersion.exit.1_crit_edge, %if.end8.i.1.ISARVersion.exit.1_crit_edge, %if.end6.ISARVersion.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %and.i.1, %if.then14.i.1 ], [ -2, %if.end6.ISARVersion.exit.1_crit_edge ], [ -3, %if.then10.i.1.ISARVersion.exit.1_crit_edge ], [ -4, %if.end8.i.1.ISARVersion.exit.1_crit_edge ]
  %39 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.1, ptr %version, align 4
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug, align 4
  %and.1 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool1.not.1, label %ISARVersion.exit.1.if.end.1_crit_edge, label %do.end.1

ISARVersion.exit.1.if.end.1_crit_edge:            ; preds = %ISARVersion.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

do.end.1:                                         ; preds = %ISARVersion.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  %call3.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %43, i32 noundef %retval.0.i.1, i32 noundef 2) #11
  %44 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.1 = load i32, ptr %version, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %ISARVersion.exit.1.if.end.1_crit_edge
  %45 = phi i32 [ %.pr.1, %do.end.1 ], [ %retval.0.i.1, %ISARVersion.exit.1.if.end.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.1 = icmp eq i32 %45, 1
  br i1 %cmp.1, label %if.end.1.while.end_crit_edge, label %if.end6.1

if.end.1.while.end_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end6.1:                                        ; preds = %if.end.1
  %46 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl, align 4
  %48 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw.i, align 4
  %call7.1 = tail call i32 %47(ptr noundef %49, i32 noundef 35330, i32 noundef 0) #8
  %50 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg.i, align 4
  %52 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.i, align 4
  tail call void %51(ptr noundef %53, i8 noundef zeroext 117, i8 noundef zeroext 0) #8
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 32, ptr %buf.i, align 4
  %55 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx2.i, align 1
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %arrayidx4.i, align 2
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef null) #8
  %call5.i.2 = tail call fastcc i32 @poll_mbox(ptr noundef %isar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2)
  %tobool6.not.i.2 = icmp eq i32 %call5.i.2, 0
  br i1 %tobool6.not.i.2, label %if.end6.1.ISARVersion.exit.2_crit_edge, label %if.end8.i.2

if.end6.1.ISARVersion.exit.2_crit_edge:           ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.2

if.end8.i.2:                                      ; preds = %if.end6.1
  %57 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iis.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %58)
  %cmp.i.2 = icmp eq i8 %58, 21
  br i1 %cmp.i.2, label %if.then10.i.2, label %if.end8.i.2.ISARVersion.exit.2_crit_edge

if.end8.i.2.ISARVersion.exit.2_crit_edge:         ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.2

if.then10.i.2:                                    ; preds = %if.end8.i.2
  %59 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %clsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp12.i.2 = icmp eq i8 %60, 1
  br i1 %cmp12.i.2, label %if.then14.i.2, label %if.then10.i.2.ISARVersion.exit.2_crit_edge

if.then10.i.2.ISARVersion.exit.2_crit_edge:       ; preds = %if.then10.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ISARVersion.exit.2

if.then14.i.2:                                    ; preds = %if.then10.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf.i, align 4
  %63 = and i8 %62, 15
  %and.i.2 = zext i8 %63 to i32
  br label %ISARVersion.exit.2

ISARVersion.exit.2:                               ; preds = %if.then14.i.2, %if.then10.i.2.ISARVersion.exit.2_crit_edge, %if.end8.i.2.ISARVersion.exit.2_crit_edge, %if.end6.1.ISARVersion.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %and.i.2, %if.then14.i.2 ], [ -2, %if.end6.1.ISARVersion.exit.2_crit_edge ], [ -3, %if.then10.i.2.ISARVersion.exit.2_crit_edge ], [ -4, %if.end8.i.2.ISARVersion.exit.2_crit_edge ]
  %64 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i.2, ptr %version, align 4
  %65 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug, align 4
  %and.2 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool1.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool1.not.2, label %ISARVersion.exit.2.if.end.2_crit_edge, label %do.end.2

ISARVersion.exit.2.if.end.2_crit_edge:            ; preds = %ISARVersion.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

do.end.2:                                         ; preds = %ISARVersion.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  %call3.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %68, i32 noundef %retval.0.i.2, i32 noundef 3) #11
  %69 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.2 = load i32, ptr %version, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %do.end.2, %ISARVersion.exit.2.if.end.2_crit_edge
  %70 = phi i32 [ %.pr.2, %do.end.2 ], [ %retval.0.i.2, %ISARVersion.exit.2.if.end.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.2 = icmp eq i32 %70, 1
  br i1 %cmp.2, label %if.end.2.while.end_crit_edge, label %if.end6.2

if.end.2.while.end_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end6.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl, align 4
  %73 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw.i, align 4
  %call7.2 = tail call i32 %72(ptr noundef %74, i32 noundef 35330, i32 noundef 0) #8
  br label %while.end

while.end:                                        ; preds = %if.end6.2, %if.end.2.while.end_crit_edge, %if.end.1.while.end_crit_edge, %if.end.while.end_crit_edge
  %75 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp9.not = icmp eq i32 %76, 1
  br i1 %cmp9.not, label %do.body12, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %ftimer = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %ftimer, ptr noundef nonnull @ftimer_handler, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @init_isar.__key) #8
  %Flags = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 2
  %call20 = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %Flags) #8
  %ftimer24 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 2
  tail call void @init_timer_key(ptr noundef %ftimer24, ptr noundef nonnull @ftimer_handler, i32 noundef 0, ptr noundef nonnull @.str.162, ptr noundef nonnull @init_isar.__key.161) #8
  %Flags30 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 2
  %call31 = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %Flags30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body12 ], [ -22, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_isar(ptr noundef %isar) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @modeisar(ptr noundef %isar, i32 noundef 0)
  %arrayidx2 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1
  %call3 = tail call fastcc i32 @modeisar(ptr noundef %arrayidx2, i32 noundef 0)
  %ftimer = getelementptr inbounds %struct.isar_ch, ptr %isar, i32 0, i32 2
  %call6 = tail call i32 @del_timer(ptr noundef %ftimer) #8
  %ftimer9 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 2
  %call10 = tail call i32 @del_timer(ptr noundef %ftimer9) #8
  %Flags = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 2
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #8
  %Flags17 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 2
  %call18 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags17) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_firmware(ptr noundef %isar, ptr nocapture noundef readonly %buf, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 21
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %version = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 15
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %5, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.do.body9_crit_edge

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %1, -8193
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and7, ptr %debug, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.then2, %if.end.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then15)) #8
          to label %do.end19 [label %if.then15], !srcloc !511

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %name16 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %7 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name16, align 4
  %div = sdiv i32 %size, 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.169, ptr noundef %8, i32 noundef %div, i32 noundef %size) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %div20 = sdiv i32 %size, 2
  %hwlock = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 2
  %9 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwlock, align 4
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %write_reg = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  %hw = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void %12(ptr noundef %14, i8 noundef zeroext 117, i8 noundef zeroext 0) #8
  %15 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp32823 = icmp sgt i32 %size, 1
  br i1 %cmp32823, label %while.body.lr.ph, label %do.end19.while.end277_crit_edge

do.end19.while.end277_crit_edge:                  ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end277

while.body.lr.ph:                                 ; preds = %do.end19
  %iis = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 17
  %cmsb = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 18
  %clsb = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %buf146 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 20
  %incdec.ptr150 = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 1
  %incdec.ptr155 = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 2
  %incdec.ptr161 = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 3
  %name175 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end276.while.body_crit_edge, %while.body.lr.ph
  %cnt.0825 = phi i32 [ 0, %while.body.lr.ph ], [ %cnt.1, %do.end276.while.body_crit_edge ]
  %sp.0824 = phi ptr [ %buf, %while.body.lr.ph ], [ %sp.1, %do.end276.while.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %sp.0824, i32 1
  %17 = ptrtoint ptr %sp.0824 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sp.0824, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %incdec.ptr34 = getelementptr i16, ptr %sp.0824, i32 2
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %incdec.ptr, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %incdec.ptr35 = getelementptr i16, ptr %sp.0824, i32 3
  %23 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %incdec.ptr34, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %add = add i32 %cnt.0825, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then48)) #8
          to label %do.end58 [label %if.then48], !srcloc !511

if.then48:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv50 = zext i16 %19 to i32
  %conv52 = zext i16 %22 to i32
  %26 = and i16 %25, 255
  %and55 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.170, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %and55) #8
  br label %do.end58

do.end58:                                         ; preds = %if.then48, %while.body
  %conv60 = zext i16 %22 to i32
  %add61 = add i32 %add, %conv60
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %div20)
  %cmp62 = icmp sgt i32 %add61, %div20
  br i1 %cmp62, label %do.end67, label %do.body75

do.end67:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %name175 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name175, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %28, i32 noundef %div20, i32 noundef %add61) #11
  br label %reterror.thread860

do.body75:                                        ; preds = %do.end58
  %29 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwlock, align 4
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %conv91 = trunc i16 %25 to i8
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 2, i8 noundef zeroext %conv91, i8 noundef zeroext 0, ptr noundef null)
  %call101 = tail call fastcc i32 @poll_mbox(ptr noundef %isar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end106, label %if.end109

do.end106:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #11
  br label %if.then609

if.end109:                                        ; preds = %do.body75
  %31 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call83) #8
  %33 = ptrtoint ptr %iis to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp112.not = icmp eq i8 %34, 3
  br i1 %cmp112.not, label %lor.lhs.false, label %if.end109.do.end122_crit_edge

if.end109.do.end122_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

lor.lhs.false:                                    ; preds = %if.end109
  %35 = ptrtoint ptr %cmsb to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cmsb, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool115.not = icmp eq i8 %36, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %lor.lhs.false.do.end122_crit_edge

lor.lhs.false.do.end122_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

lor.lhs.false116:                                 ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %clsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool118.not = icmp eq i8 %38, 0
  br i1 %tobool118.not, label %lor.lhs.false116.while.cond132_crit_edge, label %lor.lhs.false116.do.end122_crit_edge

lor.lhs.false116.do.end122_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

lor.lhs.false116.while.cond132_crit_edge:         ; preds = %lor.lhs.false116
  br label %while.cond132

do.end122:                                        ; preds = %lor.lhs.false116.do.end122_crit_edge, %lor.lhs.false.do.end122_crit_edge, %if.end109.do.end122_crit_edge
  %conv125 = zext i8 %34 to i32
  %39 = ptrtoint ptr %cmsb to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmsb, align 2
  %conv127 = zext i8 %40 to i32
  %41 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %clsb, align 1
  %conv129 = zext i8 %42 to i32
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %conv125, i32 noundef %conv127, i32 noundef %conv129) #11
  br label %reterror.thread860

while.cond132:                                    ; preds = %lor.lhs.false240.while.cond132_crit_edge, %lor.lhs.false116.while.cond132_crit_edge
  %blk_head.sroa.0.0 = phi i16 [ %conv186, %lor.lhs.false240.while.cond132_crit_edge ], [ %19, %lor.lhs.false116.while.cond132_crit_edge ]
  %sp.1 = phi ptr [ %sp.2.lcssa, %lor.lhs.false240.while.cond132_crit_edge ], [ %incdec.ptr35, %lor.lhs.false116.while.cond132_crit_edge ]
  %left.0 = phi i16 [ %conv158, %lor.lhs.false240.while.cond132_crit_edge ], [ %22, %lor.lhs.false116.while.cond132_crit_edge ]
  %cnt.1 = phi i32 [ %add160, %lor.lhs.false240.while.cond132_crit_edge ], [ %add, %lor.lhs.false116.while.cond132_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %left.0)
  %cmp134.not = icmp eq i16 %left.0, 0
  br i1 %cmp134.not, label %do.body258, label %while.body136

while.body136:                                    ; preds = %while.cond132
  %43 = tail call i16 @llvm.umin.i16(i16 %left.0, i16 126)
  %44 = trunc i16 %43 to i8
  %conv143 = zext i16 %43 to i32
  %mul = shl nuw i8 %44, 1
  %add144 = add nuw i8 %mul, 3
  %45 = lshr i16 %blk_head.sroa.0.0, 8
  %conv149 = trunc i16 %45 to i8
  %46 = ptrtoint ptr %buf146 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv149, ptr %buf146, align 1
  %conv154 = trunc i16 %blk_head.sroa.0.0 to i8
  %47 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv154, ptr %incdec.ptr150, align 1
  %conv158 = sub i16 %left.0, %43
  %add160 = add i32 %cnt.1, %conv143
  %48 = ptrtoint ptr %incdec.ptr155 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %44, ptr %incdec.ptr155, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then174)) #8
          to label %do.end181 [label %if.then174], !srcloc !511

if.then174:                                       ; preds = %while.body136
  call void @__sanitizer_cov_trace_pc() #10
  %conv148 = zext i16 %blk_head.sroa.0.0 to i32
  %49 = ptrtoint ptr %name175 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name175, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.183, ptr noundef %50, i32 noundef %conv143, i32 noundef %conv148) #8
  br label %do.end181

do.end181:                                        ; preds = %if.then174, %while.body136
  %conv186 = add i16 %43, %blk_head.sroa.0.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool188.not819 = icmp eq i8 %44, 0
  br i1 %tobool188.not819, label %do.end181.do.body200_crit_edge, label %do.end181.while.body189_crit_edge

do.end181.while.body189_crit_edge:                ; preds = %do.end181
  br label %while.body189

do.end181.do.body200_crit_edge:                   ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body200

while.body189:                                    ; preds = %while.body189.while.body189_crit_edge, %do.end181.while.body189_crit_edge
  %noc.1822 = phi i8 [ %dec, %while.body189.while.body189_crit_edge ], [ %44, %do.end181.while.body189_crit_edge ]
  %sp.2821 = phi ptr [ %incdec.ptr190, %while.body189.while.body189_crit_edge ], [ %sp.1, %do.end181.while.body189_crit_edge ]
  %mp.0820 = phi ptr [ %incdec.ptr198, %while.body189.while.body189_crit_edge ], [ %incdec.ptr161, %do.end181.while.body189_crit_edge ]
  %incdec.ptr190 = getelementptr i16, ptr %sp.2821, i32 1
  %51 = ptrtoint ptr %sp.2821 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sp.2821, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = lshr i16 %53, 8
  %conv193 = trunc i16 %54 to i8
  %incdec.ptr194 = getelementptr i8, ptr %mp.0820, i32 1
  %55 = ptrtoint ptr %mp.0820 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv193, ptr %mp.0820, align 1
  %conv197 = trunc i16 %53 to i8
  %incdec.ptr198 = getelementptr i8, ptr %mp.0820, i32 2
  %56 = ptrtoint ptr %incdec.ptr194 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv197, ptr %incdec.ptr194, align 1
  %dec = add nsw i8 %noc.1822, -1
  %tobool188.not = icmp eq i8 %dec, 0
  br i1 %tobool188.not, label %while.body189.do.body200_crit_edge, label %while.body189.while.body189_crit_edge

while.body189.while.body189_crit_edge:            ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body189

while.body189.do.body200_crit_edge:               ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body200

do.body200:                                       ; preds = %while.body189.do.body200_crit_edge, %do.end181.do.body200_crit_edge
  %sp.2.lcssa = phi ptr [ %sp.1, %do.end181.do.body200_crit_edge ], [ %incdec.ptr190, %while.body189.do.body200_crit_edge ]
  %57 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwlock, align 4
  %call208 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #8
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 30, i8 noundef zeroext 0, i8 noundef zeroext %add144, ptr noundef null)
  %call222 = tail call fastcc i32 @poll_mbox(ptr noundef %isar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.end227, label %if.end230

do.end227:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #10
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #11
  br label %if.then609

if.end230:                                        ; preds = %do.body200
  %59 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %call208) #8
  %61 = ptrtoint ptr %iis to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %iis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %62)
  %cmp234.not = icmp eq i8 %62, 31
  br i1 %cmp234.not, label %lor.lhs.false236, label %if.end230.do.end247_crit_edge

if.end230.do.end247_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end247

lor.lhs.false236:                                 ; preds = %if.end230
  %63 = ptrtoint ptr %cmsb to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cmsb, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool239.not = icmp eq i8 %64, 0
  br i1 %tobool239.not, label %lor.lhs.false240, label %lor.lhs.false236.do.end247_crit_edge

lor.lhs.false236.do.end247_crit_edge:             ; preds = %lor.lhs.false236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end247

lor.lhs.false240:                                 ; preds = %lor.lhs.false236
  %65 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %clsb, align 1
  %tobool243.not = icmp eq i8 %66, 0
  br i1 %tobool243.not, label %lor.lhs.false240.while.cond132_crit_edge, label %lor.lhs.false240.do.end247_crit_edge

lor.lhs.false240.do.end247_crit_edge:             ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end247

lor.lhs.false240.while.cond132_crit_edge:         ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond132

do.end247:                                        ; preds = %lor.lhs.false240.do.end247_crit_edge, %lor.lhs.false236.do.end247_crit_edge, %if.end230.do.end247_crit_edge
  %conv250 = zext i8 %62 to i32
  %67 = ptrtoint ptr %cmsb to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cmsb, align 2
  %conv252 = zext i8 %68 to i32
  %69 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %clsb, align 1
  %conv254 = zext i8 %70 to i32
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %conv250, i32 noundef %conv252, i32 noundef %conv254) #11
  br label %reterror.thread860

do.body258:                                       ; preds = %while.cond132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then270)) #8
          to label %do.end276 [label %if.then270], !srcloc !511

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %name175 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name175, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.193, ptr noundef %72, i32 noundef %conv60) #8
  br label %do.end276

do.end276:                                        ; preds = %if.then270, %do.body258
  %cmp32 = icmp slt i32 %cnt.1, %div20
  br i1 %cmp32, label %do.end276.while.body_crit_edge, label %do.end276.while.end277_crit_edge

do.end276.while.end277_crit_edge:                 ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end277

do.end276.while.body_crit_edge:                   ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end277:                                     ; preds = %do.end276.while.end277_crit_edge, %do.end19.while.end277_crit_edge
  %73 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %1, ptr %debug, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #8
  %buf287 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 20
  %84 = ptrtoint ptr %buf287 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %buf287, align 4
  %arrayidx290 = getelementptr %struct.isar_hw, ptr %isar, i32 0, i32 20, i32 1
  %85 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -2, ptr %arrayidx290, align 1
  %bstat = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 16
  %86 = ptrtoint ptr %bstat to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %bstat, align 4
  %87 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hwlock, align 4
  %call300 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #8
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef null)
  %call314 = tail call fastcc i32 @poll_mbox(ptr noundef %isar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %do.end319, label %if.end322

do.end319:                                        ; preds = %while.end277
  call void @__sanitizer_cov_trace_pc() #10
  %call321 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #11
  br label %if.then609

if.end322:                                        ; preds = %while.end277
  %iis323 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 17
  %89 = ptrtoint ptr %iis323 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %iis323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %90)
  %cmp325.not = icmp eq i8 %90, 9
  br i1 %cmp325.not, label %lor.lhs.false327, label %if.end322.do.end338_crit_edge

if.end322.do.end338_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end338

lor.lhs.false327:                                 ; preds = %if.end322
  %cmsb328 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 18
  %91 = ptrtoint ptr %cmsb328 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cmsb328, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool330.not = icmp eq i8 %92, 0
  br i1 %tobool330.not, label %lor.lhs.false331, label %lor.lhs.false327.do.end338_crit_edge

lor.lhs.false327.do.end338_crit_edge:             ; preds = %lor.lhs.false327
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end338

lor.lhs.false331:                                 ; preds = %lor.lhs.false327
  %clsb332 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %93 = ptrtoint ptr %clsb332 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %clsb332, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool334.not = icmp eq i8 %94, 0
  br i1 %tobool334.not, label %do.body348, label %lor.lhs.false331.do.end338_crit_edge

lor.lhs.false331.do.end338_crit_edge:             ; preds = %lor.lhs.false331
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end338

do.end338:                                        ; preds = %lor.lhs.false331.do.end338_crit_edge, %lor.lhs.false327.do.end338_crit_edge, %if.end322.do.end338_crit_edge
  %conv341 = zext i8 %90 to i32
  %cmsb342 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 18
  %95 = ptrtoint ptr %cmsb342 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cmsb342, align 2
  %conv343 = zext i8 %96 to i32
  %clsb344 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %97 = ptrtoint ptr %clsb344 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %clsb344, align 1
  %conv345 = zext i8 %98 to i32
  %call346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %conv341, i32 noundef %conv343, i32 noundef %conv345) #11
  br label %if.then609

do.body348:                                       ; preds = %lor.lhs.false331
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then360)) #8
          to label %if.end365 [label %if.then360], !srcloc !511

if.then360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #10
  %name361 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %99 = ptrtoint ptr %name361 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name361, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.203, ptr noundef %100) #8
  br label %if.end365

if.end365:                                        ; preds = %if.then360, %do.body348
  %101 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_reg, align 4
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 4
  tail call void %102(ptr noundef %104, i8 noundef zeroext 117, i8 noundef zeroext 4) #8
  %105 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %call300) #8
  %107 = ptrtoint ptr %bstat to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bstat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool371.not827.not = icmp eq i8 %108, 0
  br i1 %tobool371.not827.not, label %if.end365.while.body373_crit_edge, label %if.end365.do.body384_crit_edge

if.end365.do.body384_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body384

if.end365.while.body373_crit_edge:                ; preds = %if.end365
  br label %while.body373

while.body373:                                    ; preds = %while.body373.while.body373_crit_edge, %if.end365.while.body373_crit_edge
  %cnt.3828 = phi i32 [ %dec374, %while.body373.while.body373_crit_edge ], [ 1000, %if.end365.while.body373_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #8
  %dec374 = add nsw i32 %cnt.3828, -1
  %110 = ptrtoint ptr %bstat to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bstat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool371.not = icmp ne i8 %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec374)
  %tobool372.not = icmp eq i32 %dec374, 0
  %or.cond = select i1 %tobool371.not, i1 true, i1 %tobool372.not
  br i1 %or.cond, label %while.end375, label %while.body373.while.body373_crit_edge

while.body373.while.body373_crit_edge:            ; preds = %while.body373
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body373

while.end375:                                     ; preds = %while.body373
  br i1 %tobool372.not, label %do.end380, label %while.end375.do.body384_crit_edge

while.end375.do.body384_crit_edge:                ; preds = %while.end375
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body384

do.end380:                                        ; preds = %while.end375
  call void @__sanitizer_cov_trace_pc() #10
  %call382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #11
  br label %reterror.thread860

do.body384:                                       ; preds = %while.end375.do.body384_crit_edge, %if.end365.do.body384_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then396)) #8
          to label %if.end403 [label %if.then396], !srcloc !511

if.then396:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #10
  %name397 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %112 = ptrtoint ptr %name397 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name397, align 4
  %114 = ptrtoint ptr %bstat to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bstat, align 4
  %conv399 = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.207, ptr noundef %113, i32 noundef %conv399) #8
  br label %if.end403

if.end403:                                        ; preds = %if.then396, %do.body384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #8
  %126 = ptrtoint ptr %iis323 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %iis323, align 1
  %127 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hwlock, align 4
  %call419 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %128) #8
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 5, i8 noundef zeroext 64, i8 noundef zeroext 0, ptr noundef null)
  %129 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %130, i32 noundef %call419) #8
  %131 = ptrtoint ptr %iis323 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %iis323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %132)
  %cmp437.not831 = icmp eq i8 %132, 37
  br i1 %cmp437.not831, label %if.end452.critedge, label %if.end403.while.body442_crit_edge

if.end403.while.body442_crit_edge:                ; preds = %if.end403
  br label %while.body442

while.body442:                                    ; preds = %while.body442.while.body442_crit_edge, %if.end403.while.body442_crit_edge
  %cnt.5832 = phi i32 [ %dec443, %while.body442.while.body442_crit_edge ], [ 10000, %if.end403.while.body442_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 2147480) #8
  %dec443 = add nsw i32 %cnt.5832, -1
  %134 = ptrtoint ptr %iis323 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %iis323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %135)
  %cmp437.not = icmp eq i8 %135, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec443)
  %tobool440.not = icmp eq i32 %dec443, 0
  %or.cond767 = select i1 %cmp437.not, i1 true, i1 %tobool440.not
  br i1 %or.cond767, label %while.end444, label %while.body442.while.body442_crit_edge

while.body442.while.body442_crit_edge:            ; preds = %while.body442
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body442

while.end444:                                     ; preds = %while.body442
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #8
  br i1 %tobool440.not, label %do.end449, label %while.end444.if.end452_crit_edge

while.end444.if.end452_crit_edge:                 ; preds = %while.end444
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end452

do.end449:                                        ; preds = %while.end444
  call void @__sanitizer_cov_trace_pc() #10
  %call451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #11
  br label %reterror.thread860

if.end452.critedge:                               ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #8
  br label %if.end452

if.end452:                                        ; preds = %if.end452.critedge, %while.end444.if.end452_crit_edge
  %138 = ptrtoint ptr %cmsb328 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %cmsb328, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %139)
  %cmp455 = icmp eq i8 %139, 64
  br i1 %cmp455, label %land.lhs.true, label %if.end452.do.end488_crit_edge

if.end452.do.end488_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end488

land.lhs.true:                                    ; preds = %if.end452
  %140 = ptrtoint ptr %clsb332 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %clsb332, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp459 = icmp eq i8 %141, 1
  br i1 %cmp459, label %land.lhs.true461, label %land.lhs.true.do.end488_crit_edge

land.lhs.true.do.end488_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end488

land.lhs.true461:                                 ; preds = %land.lhs.true
  %142 = ptrtoint ptr %buf287 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %buf287, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp465 = icmp eq i8 %143, 0
  br i1 %cmp465, label %do.body468, label %land.lhs.true461.do.end488_crit_edge

land.lhs.true461.do.end488_crit_edge:             ; preds = %land.lhs.true461
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end488

do.body468:                                       ; preds = %land.lhs.true461
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then480)) #8
          to label %do.body500 [label %if.then480], !srcloc !511

if.then480:                                       ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #10
  %name481 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %144 = ptrtoint ptr %name481 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name481, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.214, ptr noundef %145) #8
  br label %do.body500

do.end488:                                        ; preds = %land.lhs.true461.do.end488_crit_edge, %land.lhs.true.do.end488_crit_edge, %if.end452.do.end488_crit_edge
  %conv491 = zext i8 %139 to i32
  %146 = ptrtoint ptr %clsb332 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %clsb332, align 1
  %conv493 = zext i8 %147 to i32
  %148 = ptrtoint ptr %buf287 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %buf287, align 4
  %conv496 = zext i8 %149 to i32
  %call497 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %conv491, i32 noundef %conv493, i32 noundef %conv496) #11
  br label %reterror.thread860

do.body500:                                       ; preds = %if.then480, %do.body468
  %150 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hwlock, align 4
  %call508 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %151) #8
  %152 = ptrtoint ptr %iis323 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %iis323, align 1
  tail call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 5, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef null)
  %153 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %154, i32 noundef %call508) #8
  %155 = ptrtoint ptr %iis323 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %iis323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %156)
  %cmp527.not834 = icmp eq i8 %156, 37
  br i1 %cmp527.not834, label %while.end534.thread, label %do.body500.while.body532_crit_edge

do.body500.while.body532_crit_edge:               ; preds = %do.body500
  br label %while.body532

while.end534.thread:                              ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #8
  br label %if.else542

while.body532:                                    ; preds = %while.body532.while.body532_crit_edge, %do.body500.while.body532_crit_edge
  %cnt.6835 = phi i32 [ %dec533, %while.body532.while.body532_crit_edge ], [ 30000, %do.body500.while.body532_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 2147480) #8
  %dec533 = add nsw i32 %cnt.6835, -1
  %159 = ptrtoint ptr %iis323 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %iis323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %160)
  %cmp527.not = icmp eq i8 %160, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec533)
  %tobool530.not = icmp eq i32 %dec533, 0
  %or.cond768 = select i1 %cmp527.not, i1 true, i1 %tobool530.not
  br i1 %or.cond768, label %while.end534, label %while.body532.while.body532_crit_edge

while.body532.while.body532_crit_edge:            ; preds = %while.body532
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body532

while.end534:                                     ; preds = %while.body532
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #8
  br i1 %tobool530.not, label %do.end539, label %while.end534.if.else542_crit_edge

while.end534.if.else542_crit_edge:                ; preds = %while.end534
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else542

do.end539:                                        ; preds = %while.end534
  call void @__sanitizer_cov_trace_pc() #10
  %call541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #11
  br label %reterror.thread860

if.else542:                                       ; preds = %while.end534.if.else542_crit_edge, %while.end534.thread
  %cnt.6.lcssa859 = phi i32 [ 30000, %while.end534.thread ], [ %dec533, %while.end534.if.else542_crit_edge ]
  %162 = ptrtoint ptr %cmsb328 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %cmsb328, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %163)
  %cmp545 = icmp eq i8 %163, 16
  br i1 %cmp545, label %land.lhs.true547, label %if.else542.do.end565_crit_edge

if.else542.do.end565_crit_edge:                   ; preds = %if.else542
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end565

land.lhs.true547:                                 ; preds = %if.else542
  %164 = ptrtoint ptr %clsb332 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %clsb332, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %165)
  %cmp550 = icmp eq i8 %165, 1
  br i1 %cmp550, label %reterror, label %land.lhs.true547.do.end565_crit_edge

land.lhs.true547.do.end565_crit_edge:             ; preds = %land.lhs.true547
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end565

do.end565:                                        ; preds = %land.lhs.true547.do.end565_crit_edge, %if.else542.do.end565_crit_edge
  %name567 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %166 = ptrtoint ptr %name567 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name567, align 4
  %conv569 = zext i8 %163 to i32
  %168 = ptrtoint ptr %clsb332 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %clsb332, align 1
  %conv571 = zext i8 %169 to i32
  %call572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %167, i32 noundef %conv569, i32 noundef %conv571, i32 noundef %cnt.6.lcssa859) #11
  br label %reterror.thread860

reterror.thread860:                               ; preds = %do.end565, %do.end539, %do.end488, %do.end449, %do.end380, %do.end247, %do.end122, %do.end67
  %ret.0.ph = phi i32 [ -5, %do.end565 ], [ -62, %do.end539 ], [ -5, %do.end488 ], [ -62, %do.end449 ], [ -62, %do.end380 ], [ -5, %do.end247 ], [ 1, %do.end122 ], [ -22, %do.end67 ]
  %170 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hwlock, align 4
  %call599863 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %171) #8
  br label %if.then609

reterror:                                         ; preds = %land.lhs.true547
  call void @__sanitizer_cov_trace_pc() #10
  %name557 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %172 = ptrtoint ptr %name557 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name557, align 4
  %174 = ptrtoint ptr %buf287 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %buf287, align 4
  %conv560 = zext i8 %175 to i32
  %call561 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %173, i32 noundef %conv560) #11
  %176 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hwlock, align 4
  %call584 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #8
  tail call fastcc void @isar_setup(ptr noundef %isar)
  %178 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %179, i32 noundef %call584) #8
  %180 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hwlock, align 4
  %call599 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %181) #8
  %182 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %1, ptr %debug, align 4
  br label %if.end612

if.then609:                                       ; preds = %reterror.thread860, %do.end338, %do.end319, %do.end227, %do.end106
  %ret.1799 = phi i32 [ %ret.0.ph, %reterror.thread860 ], [ -62, %do.end319 ], [ -5, %do.end338 ], [ -62, %do.end106 ], [ -62, %do.end227 ]
  %flags.0797 = phi i32 [ %call599863, %reterror.thread860 ], [ %call300, %do.end319 ], [ %call300, %do.end338 ], [ %call83, %do.end106 ], [ %call208, %do.end227 ]
  %183 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %1, ptr %debug, align 4
  %184 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write_reg, align 4
  %186 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw, align 4
  tail call void %185(ptr noundef %187, i8 noundef zeroext 117, i8 noundef zeroext 0) #8
  br label %if.end612

if.end612:                                        ; preds = %if.then609, %reterror
  %ret.1800 = phi i32 [ %ret.1799, %if.then609 ], [ 0, %reterror ]
  %flags.0798 = phi i32 [ %flags.0797, %if.then609 ], [ %call599, %reterror ]
  %188 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %189, i32 noundef %flags.0798) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end612, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1800, %if.end612 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isar_open(ptr noundef %isar, ptr nocapture noundef %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel, align 1
  %conv = zext i8 %1 to i32
  %2 = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %2)
  %3 = icmp ult i8 %2, -2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 %sub
  %Flags = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq, align 4
  %protocol19 = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %protocol19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %protocol19, align 4
  %ch21 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %9 = ptrtoint ptr %ch21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %ch21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isar_mod_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isar_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mI_alloc_skb(i32 noundef %len, i32 noundef %gfp_mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %len, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %gfp_mask, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !512

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext %his, i8 noundef zeroext %creg, i8 noundef zeroext %len, ptr noundef %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg.i, align 4
  %hw.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext 80) #8
  %4 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not2.i = icmp eq i8 %4, 0
  br i1 %tobool.not2.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %t.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 1000, %entry.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %dec.i = add nsw i32 %t.03.i, -1
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %call4.i = tail call zeroext i8 %7(ptr noundef %9, i8 noundef zeroext 80) #8
  %10 = and i8 %call4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %do.body.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.body.loopexit.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = sub i32 1001, %t.03.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.loopexit.i, %entry.do.body.i_crit_edge
  %t.0.lcssa.i = phi i32 [ 0, %entry.do.body.i_crit_edge ], [ %phi.bo.i, %do.body.loopexit.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @waitforHIA.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mbox, %if.then.i)) #8
          to label %waitforHIA.exit [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @waitforHIA.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.47, ptr noundef %12, i32 noundef %t.0.lcssa.i) #8
  br label %waitforHIA.exit

waitforHIA.exit:                                  ; preds = %if.then.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_mbox.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mbox, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !511

if.then5:                                         ; preds = %waitforHIA.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %his to i32
  %conv6 = zext i8 %creg to i32
  %conv7 = zext i8 %len to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_mbox.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %waitforHIA.exit
  %write_reg = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 6
  %13 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg, align 4
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  tail call void %14(ptr noundef %16, i8 noundef zeroext 97, i8 noundef zeroext %creg) #8
  %17 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg, align 4
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i, align 4
  tail call void %18(ptr noundef %20, i8 noundef zeroext 96, i8 noundef zeroext %len) #8
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 4
  tail call void %22(ptr noundef %24, i8 noundef zeroext 74, i8 noundef zeroext 0) #8
  %tobool13.not = icmp eq ptr %msg, null
  %buf = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 20
  %spec.select = select i1 %tobool13.not, ptr %buf, ptr %msg
  %tobool16.not = icmp eq ptr %spec.select, null
  br i1 %tobool16.not, label %do.end.if.end47_crit_edge, label %land.lhs.true

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %do.end
  %conv17 = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %tobool18.not = icmp eq i8 %len, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end47_crit_edge, label %if.then19

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then19:                                        ; preds = %land.lhs.true
  %write_fifo = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 8
  %25 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_fifo, align 4
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  tail call void %26(ptr noundef %28, i8 noundef zeroext 76, ptr noundef nonnull %spec.select, i32 noundef %conv17) #8
  %debug = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 21
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug, align 4
  %and = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then19.if.end47_crit_edge, label %while.body.lr.ph

if.then19.if.end47_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

while.body.lr.ph:                                 ; preds = %if.then19
  %log = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 21
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end45.while.body_crit_edge, %while.body.lr.ph
  %l.025 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %do.end45.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %spec.select, i32 %l.025
  %sub = sub nsw i32 %conv17, %l.025
  %call28 = tail call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 32, i32 noundef 1, ptr noundef %log, i32 noundef 256, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_mbox.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mbox, %if.then41)) #8
          to label %do.end45 [label %if.then41], !srcloc !511

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_mbox.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.45, ptr noundef %32, ptr noundef nonnull @.str.43, i32 noundef %l.025, ptr noundef %log) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %while.body
  %add = add nuw nsw i32 %l.025, 32
  %cmp = icmp ult i32 %add, %conv17
  br i1 %cmp, label %do.end45.while.body_crit_edge, label %do.end45.if.end47_crit_edge

do.end45.if.end47_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end45.while.body_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end47:                                         ; preds = %do.end45.if.end47_crit_edge, %if.then19.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %do.end.if.end47_crit_edge
  %33 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg, align 4
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 4
  tail call void %34(ptr noundef %36, i8 noundef zeroext 80, i8 noundef zeroext %his) #8
  %37 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_reg.i, align 4
  %39 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw.i, align 4
  %call.i6 = tail call zeroext i8 %38(ptr noundef %40, i8 noundef zeroext 80) #8
  %41 = and i8 %call.i6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not2.i7 = icmp eq i8 %41, 0
  br i1 %tobool.not2.i7, label %if.end47.do.body.i18_crit_edge, label %if.end47.while.body.i14_crit_edge

if.end47.while.body.i14_crit_edge:                ; preds = %if.end47
  br label %while.body.i14

if.end47.do.body.i18_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i18

while.body.i14:                                   ; preds = %while.body.i14.while.body.i14_crit_edge, %if.end47.while.body.i14_crit_edge
  %t.03.i8 = phi i32 [ %dec.i9, %while.body.i14.while.body.i14_crit_edge ], [ 1000, %if.end47.while.body.i14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #8
  %dec.i9 = add nsw i32 %t.03.i8, -1
  %43 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_reg.i, align 4
  %45 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.i, align 4
  %call4.i10 = tail call zeroext i8 %44(ptr noundef %46, i8 noundef zeroext 80) #8
  %47 = and i8 %call4.i10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i11 = icmp eq i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i9)
  %tobool1.not.i12 = icmp eq i32 %dec.i9, 0
  %or.cond.i13 = select i1 %tobool.not.i11, i1 true, i1 %tobool1.not.i12
  br i1 %or.cond.i13, label %do.body.loopexit.i16, label %while.body.i14.while.body.i14_crit_edge

while.body.i14.while.body.i14_crit_edge:          ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i14

do.body.loopexit.i16:                             ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i15 = sub i32 1001, %t.03.i8
  br label %do.body.i18

do.body.i18:                                      ; preds = %do.body.loopexit.i16, %if.end47.do.body.i18_crit_edge
  %t.0.lcssa.i17 = phi i32 [ 0, %if.end47.do.body.i18_crit_edge ], [ %phi.bo.i15, %do.body.loopexit.i16 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @waitforHIA.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mbox, %if.then.i20)) #8
          to label %waitforHIA.exit21 [label %if.then.i20], !srcloc !511

if.then.i20:                                      ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %name.i19 = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %48 = ptrtoint ptr %name.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @waitforHIA.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.47, ptr noundef %49, i32 noundef %t.0.lcssa.i17) #8
  br label %waitforHIA.exit21

waitforHIA.exit21:                                ; preds = %if.then.i20, %do.body.i18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deliver_status(ptr nocapture noundef readonly %ch, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@deliver_status, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %3, i32 noundef %status) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end._queue_data.exit_crit_edge, label %if.end.i

do.end._queue_data.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %_queue_data.exit

if.end.i:                                         ; preds = %do.end
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i._queue_data.exit_crit_edge, label %if.end.i.i, !prof !512

if.end.i._queue_data.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_queue_data.exit

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 2050, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %status, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %12 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recv.i, align 4
  %14 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i._queue_data.exit_crit_edge, label %if.then7.i

if.end.i.i._queue_data.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_queue_data.exit

if.then7.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %_queue_data.exit

_queue_data.exit:                                 ; preds = %if.then7.i, %if.end.i.i._queue_data.exit_crit_edge, %if.end.i._queue_data.exit_crit_edge, %do.end._queue_data.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_fill_fifo(ptr noundef %ch) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_fill_fifo.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_fill_fifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 17
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 20
  %10 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_fill_fifo.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.53, ptr noundef %3, i32 noundef %5, i32 noundef %cond, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %is8 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %12 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is8, align 4
  %bstat = getelementptr inbounds %struct.isar_hw, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %bstat to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bstat, align 4
  %conv = zext i8 %15 to i32
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %16 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dpath, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp eq i8 %17, 1
  %cond11 = select i1 %cmp, i32 2, i32 4
  %and = and i32 %cond11, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %tx_skb16 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 17
  %18 = ptrtoint ptr %tx_skb16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skb16, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.then18, label %if.end41

if.then18:                                        ; preds = %if.end14
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %20 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %Flags, align 4
  %22 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %if.then18.cleanup_crit_edge, label %lor.lhs.false

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then18
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %24)
  %cmp23.not = icmp eq i32 %24, 33
  br i1 %cmp23.not, label %if.end26, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %mml = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 5
  %25 = ptrtoint ptr %mml to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mml, align 2
  %conv27 = zext i8 %26 to i32
  %buf = getelementptr inbounds %struct.isar_hw, ptr %13, i32 0, i32 20
  %fill = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 8
  %27 = ptrtoint ptr %fill to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fill, align 4
  %29 = zext i8 %28 to i32
  %30 = call ptr @memset(ptr %buf, i32 %29, i32 %conv27)
  %31 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %is8, align 4
  %33 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dpath, align 1
  %shl = shl i8 %34, 6
  %or = or i8 %shl, 32
  %buf38 = getelementptr inbounds %struct.isar_hw, ptr %32, i32 0, i32 20
  tail call fastcc void @send_mbox(ptr noundef %32, i8 noundef zeroext %or, i8 noundef zeroext 0, i8 noundef zeroext %26, ptr noundef %buf38)
  br label %cleanup

if.end41:                                         ; preds = %if.end14
  %len44 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %35 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len44, align 4
  %tx_idx46 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 20
  %37 = ptrtoint ptr %tx_idx46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_idx46, align 4
  %sub = sub i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp47 = icmp slt i32 %sub, 1
  br i1 %cmp47, label %if.end41.cleanup_crit_edge, label %if.end50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %mml51 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 5
  %39 = ptrtoint ptr %mml51 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mml51, align 2
  %conv52 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv52)
  %cmp53 = icmp ugt i32 %sub, %conv52
  %. = select i1 %cmp53, i8 0, i8 64
  %41 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv52)
  %data = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool65.not = icmp eq i32 %38, 0
  br i1 %tobool65.not, label %do.body67, label %if.end50.if.end141_crit_edge

if.end50.if.end141_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.body67:                                        ; preds = %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_fill_fifo.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_fill_fifo, %if.then79)) #8
          to label %do.end84 [label %if.then79], !srcloc !511

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %is8, align 4
  %name81 = getelementptr inbounds %struct.isar_hw, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name81, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_fill_fifo.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.54, ptr noundef %47) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %state86 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %48 = ptrtoint ptr %state86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %49)
  %cmp87 = icmp eq i32 %49, 39
  br i1 %cmp87, label %land.lhs.true, label %do.end84.if.end137_crit_edge

do.end84.if.end137_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

land.lhs.true:                                    ; preds = %do.end84
  %cmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %51)
  %cmp90 = icmp eq i8 %51, -89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp93 = icmp ugt i32 %41, 1
  %or.cond = select i1 %cmp90, i1 %cmp93, i1 false
  br i1 %or.cond, label %if.then95, label %land.lhs.true.if.end137_crit_edge

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then95:                                        ; preds = %land.lhs.true
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp98 = icmp eq i8 %53, -1
  br i1 %cmp98, label %land.lhs.true100, label %if.then95.if.end137_crit_edge

if.then95.if.end137_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

land.lhs.true100:                                 ; preds = %if.then95
  %arrayidx101 = getelementptr i8, ptr %add.ptr, i32 1
  %54 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %55)
  %cmp103 = icmp eq i8 %55, 19
  br i1 %cmp103, label %if.then105, label %land.lhs.true100.if.end137_crit_edge

land.lhs.true100.if.end137_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then105:                                       ; preds = %land.lhs.true100
  %Flags107 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call108 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %Flags107) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_fill_fifo.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_fill_fifo, %if.then121)) #8
          to label %do.end126 [label %if.then121], !srcloc !511

if.then121:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %is8, align 4
  %name123 = getelementptr inbounds %struct.isar_hw, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %name123 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name123, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_fill_fifo.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.55, ptr noundef %59) #8
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %if.then105
  br i1 %cmp53, label %do.end126.if.end137_crit_edge, label %if.then130

do.end126.if.end137_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then130:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  %call133 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %Flags107) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then130, %do.end126.if.end137_crit_edge, %land.lhs.true100.if.end137_crit_edge, %if.then95.if.end137_crit_edge, %land.lhs.true.if.end137_crit_edge, %do.end84.if.end137_crit_edge
  %60 = or i8 %., 32
  br label %if.end141

if.end141:                                        ; preds = %if.end137, %if.end50.if.end141_crit_edge
  %msb.1 = phi i8 [ %., %if.end50.if.end141_crit_edge ], [ %60, %if.end137 ]
  %61 = ptrtoint ptr %tx_idx46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_idx46, align 4
  %add = add i32 %62, %41
  store i32 %add, ptr %tx_idx46, align 4
  %state145 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %63 = ptrtoint ptr %state145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state145, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %64, label %do.end249 [
    i32 0, label %do.end148
    i32 33, label %if.end141.sw.bb151_crit_edge
    i32 36, label %if.end141.sw.bb151_crit_edge335
    i32 40, label %if.end141.sw.bb151_crit_edge336
    i32 34, label %sw.bb161
    i32 39, label %sw.bb171
  ]

if.end141.sw.bb151_crit_edge336:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end141.sw.bb151_crit_edge335:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end141.sw.bb151_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

do.end148:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52) #11
  br label %cleanup

sw.bb151:                                         ; preds = %if.end141.sw.bb151_crit_edge, %if.end141.sw.bb151_crit_edge335, %if.end141.sw.bb151_crit_edge336
  %66 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %is8, align 4
  %68 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dpath, align 1
  %shl155 = shl i8 %69, 6
  %or157 = or i8 %shl155, 32
  %conv159 = trunc i32 %41 to i8
  tail call fastcc void @send_mbox(ptr noundef %67, i8 noundef zeroext %or157, i8 noundef zeroext 0, i8 noundef zeroext %conv159, ptr noundef %add.ptr)
  br label %cleanup

sw.bb161:                                         ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %is8, align 4
  %72 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dpath, align 1
  %shl165 = shl i8 %73, 6
  %or167 = or i8 %shl165, 32
  %conv169 = trunc i32 %41 to i8
  tail call fastcc void @send_mbox(ptr noundef %71, i8 noundef zeroext %or167, i8 noundef zeroext %msb.1, i8 noundef zeroext %conv169, ptr noundef %add.ptr)
  br label %cleanup

sw.bb171:                                         ; preds = %if.end141
  %state172 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %74 = ptrtoint ptr %state172 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %state172, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %cmp174.not = icmp eq i8 %75, 4
  br i1 %cmp174.not, label %if.else195, label %do.body177

do.body177:                                       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_fill_fifo.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_fill_fifo, %if.then189)) #8
          to label %cleanup [label %if.then189], !srcloc !511

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %is8, align 4
  %name191 = getelementptr inbounds %struct.isar_hw, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %name191 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name191, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_fill_fifo.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.57, ptr noundef %79) #8
  br label %cleanup

if.else195:                                       ; preds = %sw.bb171
  %cmd196 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %80 = ptrtoint ptr %cmd196 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cmd196, align 4
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.247)
  switch i8 %81, label %do.body226 [
    i8 -89, label %if.then200
    i8 -88, label %if.then215
  ]

if.then200:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %is8, align 4
  %85 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dpath, align 1
  %shl204 = shl i8 %86, 6
  %or206 = or i8 %shl204, 32
  %conv208 = trunc i32 %41 to i8
  tail call fastcc void @send_mbox(ptr noundef %84, i8 noundef zeroext %or206, i8 noundef zeroext %msb.1, i8 noundef zeroext %conv208, ptr noundef %add.ptr)
  br label %cleanup

if.then215:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %is8, align 4
  %89 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dpath, align 1
  %shl219 = shl i8 %90, 6
  %or221 = or i8 %shl219, 32
  %conv223 = trunc i32 %41 to i8
  tail call fastcc void @send_mbox(ptr noundef %88, i8 noundef zeroext %or221, i8 noundef zeroext 0, i8 noundef zeroext %conv223, ptr noundef %add.ptr)
  br label %cleanup

do.body226:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_fill_fifo.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_fill_fifo, %if.then238)) #8
          to label %cleanup [label %if.then238], !srcloc !511

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %is8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %is8, align 4
  %name240 = getelementptr inbounds %struct.isar_hw, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %name240 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name240, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_fill_fifo.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.58, ptr noundef %94) #8
  br label %cleanup

do.end249:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.52, i32 noundef %64) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end249, %if.then238, %do.body226, %if.then215, %if.then200, %if.then189, %do.body177, %sw.bb161, %sw.bb151, %do.end148, %if.end41.cleanup_crit_edge, %if.end26, %lor.lhs.false.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_next(ptr noundef %ch) unnamed_addr #1 align 64 {
entry:
  %zd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_next.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_next, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 17
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 20
  %10 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_next.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.63, ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef %5, i32 noundef %cond, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %13)
  %cmp = icmp eq i32 %13, 39
  br i1 %cmp, label %if.then9, label %do.end.if.end55_crit_edge

do.end.if.end55_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then9:                                         ; preds = %do.end
  %cmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.248)
  switch i8 %15, label %if.then9.if.end55_crit_edge [
    i8 -89, label %if.then12
    i8 -88, label %if.then40
  ]

if.then9.if.end55_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then12:                                        ; preds = %if.then9
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %17 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Flags, align 4
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.then12.if.end55_crit_edge, label %do.body17

if.then12.if.end55_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_next.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_next, %if.then29)) #8
          to label %if.end55.sink.split [label %if.then29], !srcloc !511

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_next.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.64) #8
  br label %if.end55.sink.split

if.then40:                                        ; preds = %if.then9
  %Flags42 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %20 = ptrtoint ptr %Flags42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %Flags42, align 4
  %22 = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %if.then40.if.end55_crit_edge, label %if.then45

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %Flags42) #8
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then45, %if.then29, %do.body17
  %Flags.sink = phi ptr [ %Flags42, %if.then45 ], [ %Flags, %do.body17 ], [ %Flags, %if.then29 ]
  %call34 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %Flags.sink) #8
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.then40.if.end55_crit_edge, %if.then12.if.end55_crit_edge, %if.then9.if.end55_crit_edge, %do.end.if.end55_crit_edge
  %tx_skb57 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 17
  %23 = ptrtoint ptr %tx_skb57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_skb57, align 4
  tail call void @consume_skb(ptr noundef %24) #8
  %call59 = tail call i32 @get_next_bframe(ptr noundef %ch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else65, label %if.then61

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_fill_fifo(ptr noundef %ch)
  %Flags63 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call64 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %Flags63) #8
  br label %if.end109

if.else65:                                        ; preds = %if.end55
  %Flags67 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %25 = ptrtoint ptr %Flags67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %Flags67, align 4
  %27 = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool69.not = icmp eq i32 %27, 0
  br i1 %tobool69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @isar_fill_fifo(ptr noundef %ch)
  br label %if.end109

if.else71:                                        ; preds = %if.else65
  %call74 = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %Flags67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.else97, label %if.then76

if.then76:                                        ; preds = %if.else71
  %call79 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %Flags67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else95, label %if.then81

if.then81:                                        ; preds = %if.then76
  %call84 = tail call i32 @_test_and_clear_bit(i32 noundef 22, ptr noundef %Flags67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then81.if.end91_crit_edge, label %if.then86

if.then81.if.end91_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zd) #8
  %28 = ptrtoint ptr %zd to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %zd, align 1
  %is87 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %29 = ptrtoint ptr %is87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %is87, align 4
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %31 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dpath, align 1
  %shl = shl i8 %32, 6
  %or = or i8 %shl, 32
  call fastcc void @send_mbox(ptr noundef %30, i8 noundef zeroext %or, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %zd)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zd) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.then81.if.end91_crit_edge
  %call94 = call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %Flags67) #8
  br label %if.end109

if.else95:                                        ; preds = %if.then76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_next, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  %is.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %33 = ptrtoint ptr %is.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %is.i, align 4
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %36, i32 noundef 16400) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else95
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %37 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %do.end.i.if.end109_crit_edge, label %if.end.i.i

do.end.i.if.end109_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.end.i.i:                                       ; preds = %do.end.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end109_crit_edge, label %if.end.i.i.i, !prof !512

if.end.i.i.if.end109_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %40, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %42, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 2050, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 16400, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %45 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %recv.i.i, align 4
  %47 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %46(ptr noundef %48, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i.if.end109_crit_edge, label %if.then7.i.i

if.end.i.i.i.if.end109_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %if.end109

if.else97:                                        ; preds = %if.else71
  %49 = ptrtoint ptr %Flags67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %Flags67, align 4
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool101.not = icmp eq i32 %51, 0
  br i1 %tobool101.not, label %if.else97.if.end109_crit_edge, label %if.then102

if.else97.if.end109_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then102:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %Flags67) #8
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.else97.if.end109_crit_edge, %if.then7.i.i, %if.end.i.i.i.if.end109_crit_edge, %if.end.i.i.if.end109_crit_edge, %do.end.i.if.end109_crit_edge, %if.end91, %if.then70, %if.then61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modeisar(ptr noundef %ch, i32 noundef %bprotocol) unnamed_addr #1 align 64 {
entry:
  %param.i154 = alloca [2 x i8], align 2
  %msg.i = alloca [5 x i8], align 1
  %param.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.then:                                          ; preds = %entry
  %2 = zext i32 %bprotocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %bprotocol, label %do.end47 [
    i32 0, label %sw.bb
    i32 33, label %if.then.sw.bb6_crit_edge
    i32 34, label %if.then.sw.bb6_crit_edge164
    i32 40, label %if.then.sw.bb32_crit_edge
    i32 39, label %if.then.sw.bb32_crit_edge165
    i32 36, label %if.then.sw.bb32_crit_edge166
  ]

if.then.sw.bb32_crit_edge166:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.then.sw.bb32_crit_edge165:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.then.sw.bb32_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.then.sw.bb6_crit_edge164:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

if.then.sw.bb6_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

sw.bb:                                            ; preds = %if.then
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %3 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dpath, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #8
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #8
  br label %do.body53

sw.bb6:                                           ; preds = %if.then.sw.bb6_crit_edge, %if.then.sw.bb6_crit_edge164
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is, align 4
  %Flags7 = getelementptr inbounds %struct.isar_hw, ptr %6, i32 0, i32 14
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %Flags7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %sw.bb6.if.end21_crit_edge, label %if.else

sw.bb6.if.end21_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %sw.bb6
  %7 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is, align 4
  %Flags13 = getelementptr inbounds %struct.isar_hw, ptr %8, i32 0, i32 14
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %Flags13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end21_crit_edge, label %do.end

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #11
  br label %return

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %sw.bb6.if.end21_crit_edge
  %.sink = phi i8 [ 2, %sw.bb6.if.end21_crit_edge ], [ 1, %if.else.if.end21_crit_edge ]
  %dpath17 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %9 = ptrtoint ptr %dpath17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %dpath17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %bprotocol)
  %cmp22 = icmp eq i32 %bprotocol, 34
  %Flags25 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags25) #8
  br label %do.body53

if.else27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags25) #8
  br label %do.body53

sw.bb32:                                          ; preds = %if.then.sw.bb32_crit_edge, %if.then.sw.bb32_crit_edge165, %if.then.sw.bb32_crit_edge166
  %is33 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %10 = ptrtoint ptr %is33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is33, align 4
  %Flags34 = getelementptr inbounds %struct.isar_hw, ptr %11, i32 0, i32 14
  %call35 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %Flags34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %do.end41

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %dpath38 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %12 = ptrtoint ptr %dpath38 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dpath38, align 1
  br label %do.body53

do.end41:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %is33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is33, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %16) #11
  br label %return

do.end47:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %is49 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %17 = ptrtoint ptr %is49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %is49, align 4
  %name50 = getelementptr inbounds %struct.isar_hw, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name50, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %20, i32 noundef %bprotocol) #11
  br label %return

do.body53:                                        ; preds = %if.then37, %if.else27, %if.then23, %if.end, %entry.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @modeisar.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@modeisar, %if.then59)) #8
          to label %do.end67 [label %if.then59], !srcloc !511

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %is60 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %is60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %is60, align 4
  %name61 = getelementptr inbounds %struct.isar_hw, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name61, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr, align 4
  %dpath63 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %27 = ptrtoint ptr %dpath63 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dpath63, align 1
  %conv = zext i8 %28 to i32
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @modeisar.__UNIQUE_ID_ddebug533, ptr noundef nonnull @.str.152, ptr noundef %24, i32 noundef %26, i32 noundef %conv, i32 noundef %30, i32 noundef %bprotocol) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then59, %do.body53
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bprotocol, ptr %state, align 4
  %dpath.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %32 = ptrtoint ptr %dpath.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dpath.i, align 1
  %shl.i = shl i8 %33, 6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %param.i) #8
  %34 = getelementptr inbounds [6 x i8], ptr %param.i, i32 0, i32 1
  %35 = getelementptr inbounds [6 x i8], ptr %param.i, i32 0, i32 2
  %36 = getelementptr inbounds [6 x i8], ptr %param.i, i32 0, i32 3
  %37 = getelementptr inbounds [6 x i8], ptr %param.i, i32 0, i32 4
  %38 = getelementptr inbounds [6 x i8], ptr %param.i, i32 0, i32 5
  %39 = call ptr @memset(ptr %param.i, i32 255, i32 6)
  %40 = zext i32 %bprotocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %bprotocol, label %do.end67.setup_pump.exit_crit_edge [
    i32 0, label %do.end67.sw.bb.i_crit_edge
    i32 33, label %do.end67.sw.bb.i_crit_edge167
    i32 34, label %do.end67.sw.bb.i_crit_edge168
    i32 36, label %sw.bb4.i
    i32 40, label %entry.sw.bb19_crit_edge.i
    i32 39, label %sw.bb43.i
  ]

do.end67.sw.bb.i_crit_edge168:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end67.sw.bb.i_crit_edge167:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end67.sw.bb.i_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end67.setup_pump.exit_crit_edge:               ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_pump.exit

entry.sw.bb19_crit_edge.i:                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = or i8 %shl.i, 38
  br label %sw.bb19.i

sw.bb.i:                                          ; preds = %do.end67.sw.bb.i_crit_edge, %do.end67.sw.bb.i_crit_edge167, %do.end67.sw.bb.i_crit_edge168
  %is.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %41 = ptrtoint ptr %is.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %is.i, align 4
  %43 = or i8 %shl.i, 38
  tail call fastcc void @send_mbox(ptr noundef %42, i8 noundef zeroext %43, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef null) #8
  br label %setup_pump.exit

sw.bb4.i:                                         ; preds = %do.end67
  %Flags.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %44 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %Flags.i, align 4
  %46 = and i32 %45, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %param.i, align 1
  %is7.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %48 = ptrtoint ptr %is7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %is7.i, align 4
  %50 = or i8 %shl.i, 38
  call fastcc void @send_mbox(ptr noundef %49, i8 noundef zeroext %50, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %param.i) #8
  br label %sw.bb19.i

if.else.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 40, ptr %param.i, align 1
  %is13.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %52 = ptrtoint ptr %is13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %is13.i, align 4
  %54 = or i8 %shl.i, 38
  call fastcc void @send_mbox(ptr noundef %53, i8 noundef zeroext %54, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %param.i) #8
  br label %sw.bb19.i

sw.bb19.i:                                        ; preds = %if.else.i, %if.then.i, %entry.sw.bb19_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %entry.sw.bb19_crit_edge.i ], [ %50, %if.then.i ], [ %54, %if.else.i ]
  %Flags21.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %55 = ptrtoint ptr %Flags21.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %Flags21.i, align 4
  %57 = and i32 %56, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool23.not.i = icmp eq i32 %57, 0
  %..i = select i1 %tobool23.not.i, i8 2, i8 1
  %.95.i = select i1 %tobool23.not.i, i8 2, i8 -126
  %58 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %..i, ptr %38, align 1
  %59 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 6, ptr %param.i, align 1
  %60 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 123, ptr %34, align 1
  %61 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -125, ptr %35, align 1
  %62 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -7, ptr %36, align 1
  %63 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 15, ptr %37, align 1
  %is37.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %64 = ptrtoint ptr %is37.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %is37.i, align 4
  call fastcc void @send_mbox(ptr noundef %65, i8 noundef zeroext %.pre-phi.i, i8 noundef zeroext %.95.i, i8 noundef zeroext 6, ptr noundef nonnull %param.i) #8
  br label %setup_pump.exit

sw.bb43.i:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %Flags45.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %66 = ptrtoint ptr %Flags45.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %Flags45.i, align 4
  %68 = and i32 %67, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool47.not.i = icmp eq i32 %68, 0
  %.96.i = select i1 %tobool47.not.i, i8 4, i8 1
  %.97.i = select i1 %tobool47.not.i, i8 1, i8 -127
  %69 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.96.i, ptr %34, align 1
  %70 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %param.i, align 1
  %is57.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %71 = ptrtoint ptr %is57.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %is57.i, align 4
  %73 = or i8 %shl.i, 38
  call fastcc void @send_mbox(ptr noundef %72, i8 noundef zeroext %73, i8 noundef zeroext %.97.i, i8 noundef zeroext 2, ptr noundef nonnull %param.i) #8
  %state63.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %74 = ptrtoint ptr %state63.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %state63.i, align 1
  %newcmd.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %75 = ptrtoint ptr %newcmd.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %newcmd.i, align 2
  %newmod.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %76 = ptrtoint ptr %newmod.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %newmod.i, align 1
  %call66.i = call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %Flags45.i) #8
  br label %setup_pump.exit

setup_pump.exit:                                  ; preds = %sw.bb43.i, %sw.bb19.i, %sw.bb.i, %do.end67.setup_pump.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #8
  %is67.i = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %78 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %is67.i, align 4
  %80 = or i8 %shl.i, 14
  call fastcc void @send_mbox(ptr noundef %79, i8 noundef zeroext %80, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %param.i) #8
  %82 = ptrtoint ptr %dpath.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dpath.i, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i) #8
  %84 = call ptr @memcpy(ptr %msg.i, ptr @__const.setup_iom2.msg, i32 5)
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %85 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp.i = icmp eq i32 %86, 2
  br i1 %cmp.i, label %if.then.i147, label %setup_pump.exit.if.end.i_crit_edge

setup_pump.exit.if.end.i_crit_edge:               ; preds = %setup_pump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i147:                                     ; preds = %setup_pump.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %arrayidx3.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i147, %setup_pump.exit.if.end.i_crit_edge
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %90, label %if.end.i.setup_iom2.exit_crit_edge [
    i32 0, label %sw.bb.i149
    i32 36, label %if.end.i.sw.bb18.i_crit_edge
    i32 39, label %if.end.i.sw.bb15.i_crit_edge
    i32 40, label %if.end.i.sw.bb15.i_crit_edge169
  ]

if.end.i.sw.bb15.i_crit_edge169:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end.i.sw.bb15.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end.i.sw.bb18.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i

if.end.i.setup_iom2.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_iom2.exit

sw.bb.i149:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i8 %83, 2
  %arrayidx8.i = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %add.i, ptr %arrayidx8.i, align 1
  %arrayidx13.i = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %add.i, ptr %arrayidx13.i, align 1
  br label %setup_iom2.exit

sw.bb15.i:                                        ; preds = %if.end.i.sw.bb15.i_crit_edge, %if.end.i.sw.bb15.i_crit_edge169
  br label %sw.bb18.i

sw.bb18.i:                                        ; preds = %sw.bb15.i, %if.end.i.sw.bb18.i_crit_edge
  %cmsb.0.i = phi i8 [ -125, %sw.bb15.i ], [ -126, %if.end.i.sw.bb18.i_crit_edge ]
  %Flags.i150 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %94 = ptrtoint ptr %Flags.i150 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %Flags.i150, align 4
  %96 = and i32 %95, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i151 = icmp eq i32 %96, 0
  %97 = select i1 %tobool.not.i151, i8 %cmsb.0.i, i8 -125
  br label %setup_iom2.exit

setup_iom2.exit:                                  ; preds = %sw.bb18.i, %sw.bb.i149, %if.end.i.setup_iom2.exit_crit_edge
  %cmsb.2.i = phi i8 [ -128, %if.end.i.setup_iom2.exit_crit_edge ], [ %97, %sw.bb18.i ], [ 0, %sw.bb.i149 ]
  %shl.i152 = shl i8 %83, 6
  %98 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %is67.i, align 4
  %or29.i = or i8 %shl.i152, 39
  call fastcc void @send_mbox(ptr noundef %99, i8 noundef zeroext %or29.i, i8 noundef zeroext %cmsb.2.i, i8 noundef zeroext 5, ptr noundef nonnull %msg.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #8
  %101 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %is67.i, align 4
  %103 = or i8 %shl.i152, 7
  call fastcc void @send_mbox(ptr noundef %102, i8 noundef zeroext %103, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i) #8
  %105 = ptrtoint ptr %dpath.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dpath.i, align 1
  %shl.i156 = shl i8 %106, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i154) #8
  %107 = ptrtoint ptr %param.i154 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %param.i154, align 2
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %state, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %109, label %setup_iom2.exit.setup_sart.exit_crit_edge [
    i32 0, label %sw.bb.i159
    i32 33, label %setup_iom2.exit.sw.bb4.i160_crit_edge
    i32 36, label %setup_iom2.exit.sw.bb4.i160_crit_edge170
    i32 34, label %setup_iom2.exit.sw.bb10.i_crit_edge
    i32 39, label %setup_iom2.exit.sw.bb10.i_crit_edge171
    i32 40, label %sw.bb17.i
  ]

setup_iom2.exit.sw.bb10.i_crit_edge171:           ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

setup_iom2.exit.sw.bb10.i_crit_edge:              ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

setup_iom2.exit.sw.bb4.i160_crit_edge170:         ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i160

setup_iom2.exit.sw.bb4.i160_crit_edge:            ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i160

setup_iom2.exit.setup_sart.exit_crit_edge:        ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_sart.exit

sw.bb.i159:                                       ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %is67.i, align 4
  %113 = or i8 %shl.i156, 37
  call fastcc void @send_mbox(ptr noundef %112, i8 noundef zeroext %113, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #8
  br label %setup_sart.exit

sw.bb4.i160:                                      ; preds = %setup_iom2.exit.sw.bb4.i160_crit_edge, %setup_iom2.exit.sw.bb4.i160_crit_edge170
  %114 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %is67.i, align 4
  %116 = or i8 %shl.i156, 37
  call fastcc void @send_mbox(ptr noundef %115, i8 noundef zeroext %116, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %param.i154) #8
  br label %setup_sart.exit

sw.bb10.i:                                        ; preds = %setup_iom2.exit.sw.bb10.i_crit_edge, %setup_iom2.exit.sw.bb10.i_crit_edge171
  %117 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %is67.i, align 4
  %119 = or i8 %shl.i156, 37
  call fastcc void @send_mbox(ptr noundef %118, i8 noundef zeroext %119, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull %param.i154) #8
  br label %setup_sart.exit

sw.bb17.i:                                        ; preds = %setup_iom2.exit
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %param.i154 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %param.i154, align 2
  %arrayidx18.i = getelementptr inbounds [2 x i8], ptr %param.i154, i32 0, i32 1
  %121 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 16, ptr %arrayidx18.i, align 1
  %122 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %is67.i, align 4
  %124 = or i8 %shl.i156, 37
  call fastcc void @send_mbox(ptr noundef %123, i8 noundef zeroext %124, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef nonnull %param.i154) #8
  br label %setup_sart.exit

setup_sart.exit:                                  ; preds = %sw.bb17.i, %sw.bb10.i, %sw.bb4.i160, %sw.bb.i159, %setup_iom2.exit.setup_sart.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #8
  %126 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %is67.i, align 4
  %128 = or i8 %shl.i156, 12
  call fastcc void @send_mbox(ptr noundef %127, i8 noundef zeroext %128, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 214748000) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i154) #8
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp72 = icmp eq i32 %131, 0
  br i1 %cmp72, label %if.then74, label %if.else100

if.then74:                                        ; preds = %setup_sart.exit
  %132 = ptrtoint ptr %dpath.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %dpath.i, align 1
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %133, label %if.then74.if.end93_crit_edge [
    i8 1, label %if.then74.if.end93.sink.split_crit_edge
    i8 2, label %if.then88
  ]

if.then74.if.end93.sink.split_crit_edge:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.sink.split

if.then74.if.end93_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then88:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.sink.split

if.end93.sink.split:                              ; preds = %if.then88, %if.then74.if.end93.sink.split_crit_edge
  %.sink162 = phi i32 [ 2, %if.then88 ], [ 1, %if.then74.if.end93.sink.split_crit_edge ]
  %135 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %is67.i, align 4
  %Flags90 = getelementptr inbounds %struct.isar_hw, ptr %136, i32 0, i32 14
  %call91 = call i32 @_test_and_clear_bit(i32 noundef %.sink162, ptr noundef %Flags90) #8
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %if.then74.if.end93_crit_edge
  %137 = ptrtoint ptr %dpath.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %dpath.i, align 1
  %138 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %is67.i, align 4
  %ctrl = getelementptr inbounds %struct.isar_hw, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ctrl, align 4
  %hw = getelementptr inbounds %struct.isar_hw, ptr %139, i32 0, i32 1
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 4
  %144 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nr.i, align 4
  %call99 = call i32 %141(ptr noundef %143, i32 noundef 37378, i32 noundef %145) #8
  br label %return

if.else100:                                       ; preds = %setup_sart.exit
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %is67.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %is67.i, align 4
  %ctrl102 = getelementptr inbounds %struct.isar_hw, ptr %147, i32 0, i32 9
  %148 = ptrtoint ptr %ctrl102 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctrl102, align 4
  %hw104 = getelementptr inbounds %struct.isar_hw, ptr %147, i32 0, i32 1
  %150 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw104, align 4
  %152 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %nr.i, align 4
  %call107 = call i32 %149(ptr noundef %151, i32 noundef 37634, i32 noundef %153) #8
  br label %return

return:                                           ; preds = %if.else100, %if.end93, %do.end47, %do.end41, %do.end, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -92, %do.end47 ], [ -16, %do.end41 ], [ -16, %do.end ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.else100 ], [ 0, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_pump_cmd(ptr noundef %ch, i32 noundef %cmd, i8 noundef zeroext %para) unnamed_addr #1 align 64 {
entry:
  %p1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dpath = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %dpath to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpath, align 1
  %shl = shl i8 %1, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p1) #8
  %2 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isar_pump_cmd.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isar_pump_cmd, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %conv4 = zext i8 %para to i32
  %state = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isar_pump_cmd.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.154, ptr noundef %6, i32 noundef %cmd, i32 noundef %conv4, i32 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %cmd, label %do.end.if.end144_crit_edge [
    i32 16386, label %sw.bb
    i32 16387, label %sw.bb32
    i32 16384, label %sw.bb67
    i32 16385, label %sw.bb102
    i32 90, label %sw.bb137
  ]

do.end.if.end144_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

sw.bb:                                            ; preds = %do.end
  %state5 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %10 = ptrtoint ptr %state5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state5, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %11, label %sw.bb.if.else26_crit_edge [
    i8 1, label %if.then8
    i8 4, label %land.lhs.true
  ]

sw.bb.if.else26_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %para, ptr %p1, align 1
  %14 = ptrtoint ptr %state5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %state5, align 1
  %cmd10 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %15 = ptrtoint ptr %cmd10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -88, ptr %cmd10, align 4
  %mod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %16 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %para, ptr %mod, align 1
  %newmod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %17 = ptrtoint ptr %newmod to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %newmod, align 1
  %newcmd = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %18 = ptrtoint ptr %newcmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %newcmd, align 2
  %try_mod = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %19 = ptrtoint ptr %try_mod to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %try_mod, align 4
  br label %if.then139

land.lhs.true:                                    ; preds = %sw.bb
  %cmd15 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %20 = ptrtoint ptr %cmd15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %21)
  %cmp17 = icmp eq i8 %21, -88
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true.if.else26_crit_edge

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

land.lhs.true19:                                  ; preds = %land.lhs.true
  %mod20 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %22 = ptrtoint ptr %mod20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mod20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %para)
  %cmp23 = icmp eq i8 %23, %para
  br i1 %cmp23, label %if.then25, label %land.lhs.true19.if.else26_crit_edge

land.lhs.true19.if.else26_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16400)
  br label %if.end144

if.else26:                                        ; preds = %land.lhs.true19.if.else26_crit_edge, %land.lhs.true.if.else26_crit_edge, %sw.bb.if.else26_crit_edge
  %newmod27 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %24 = ptrtoint ptr %newmod27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %para, ptr %newmod27, align 1
  %newcmd28 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %25 = ptrtoint ptr %newcmd28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -88, ptr %newcmd28, align 2
  %26 = ptrtoint ptr %state5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %state5, align 1
  br label %if.then139

sw.bb32:                                          ; preds = %do.end
  %state33 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %27 = ptrtoint ptr %state33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %state33, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.256)
  switch i8 %28, label %sw.bb32.if.else61_crit_edge [
    i8 1, label %if.then37
    i8 4, label %land.lhs.true49
  ]

sw.bb32.if.else61_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %para, ptr %p1, align 1
  %31 = ptrtoint ptr %state33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %state33, align 1
  %cmd39 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %32 = ptrtoint ptr %cmd39 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -89, ptr %cmd39, align 4
  %mod40 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %33 = ptrtoint ptr %mod40 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %para, ptr %mod40, align 1
  %newmod41 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %34 = ptrtoint ptr %newmod41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %newmod41, align 1
  %newcmd42 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %35 = ptrtoint ptr %newcmd42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %newcmd42, align 2
  %try_mod43 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %36 = ptrtoint ptr %try_mod43 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %try_mod43, align 4
  br label %if.then139

land.lhs.true49:                                  ; preds = %sw.bb32
  %cmd50 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %37 = ptrtoint ptr %cmd50 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cmd50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %38)
  %cmp52 = icmp eq i8 %38, -89
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true49.if.else61_crit_edge

land.lhs.true49.if.else61_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %mod55 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %39 = ptrtoint ptr %mod55 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mod55, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %para)
  %cmp58 = icmp eq i8 %40, %para
  br i1 %cmp58, label %if.then60, label %land.lhs.true54.if.else61_crit_edge

land.lhs.true54.if.else61_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61

if.then60:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16400)
  br label %if.end144

if.else61:                                        ; preds = %land.lhs.true54.if.else61_crit_edge, %land.lhs.true49.if.else61_crit_edge, %sw.bb32.if.else61_crit_edge
  %newmod62 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %41 = ptrtoint ptr %newmod62 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %para, ptr %newmod62, align 1
  %newcmd63 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %42 = ptrtoint ptr %newcmd63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -89, ptr %newcmd63, align 2
  %43 = ptrtoint ptr %state33 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 5, ptr %state33, align 1
  br label %if.then139

sw.bb67:                                          ; preds = %do.end
  %state68 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %44 = ptrtoint ptr %state68 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %state68, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.257)
  switch i8 %45, label %sw.bb67.if.else96_crit_edge [
    i8 1, label %if.then72
    i8 4, label %land.lhs.true84
  ]

sw.bb67.if.else96_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else96

if.then72:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %para, ptr %p1, align 1
  %48 = ptrtoint ptr %state68 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %state68, align 1
  %cmd74 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %49 = ptrtoint ptr %cmd74 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -90, ptr %cmd74, align 4
  %mod75 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %50 = ptrtoint ptr %mod75 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %para, ptr %mod75, align 1
  %newmod76 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %51 = ptrtoint ptr %newmod76 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %newmod76, align 1
  %newcmd77 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %52 = ptrtoint ptr %newcmd77 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %newcmd77, align 2
  %try_mod78 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %53 = ptrtoint ptr %try_mod78 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %try_mod78, align 4
  br label %if.then139

land.lhs.true84:                                  ; preds = %sw.bb67
  %cmd85 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %54 = ptrtoint ptr %cmd85 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cmd85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -90, i8 %55)
  %cmp87 = icmp eq i8 %55, -90
  br i1 %cmp87, label %land.lhs.true89, label %land.lhs.true84.if.else96_crit_edge

land.lhs.true84.if.else96_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else96

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %mod90 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %56 = ptrtoint ptr %mod90 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mod90, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %para)
  %cmp93 = icmp eq i8 %57, %para
  br i1 %cmp93, label %if.then95, label %land.lhs.true89.if.else96_crit_edge

land.lhs.true89.if.else96_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else96

if.then95:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16400)
  br label %if.end144

if.else96:                                        ; preds = %land.lhs.true89.if.else96_crit_edge, %land.lhs.true84.if.else96_crit_edge, %sw.bb67.if.else96_crit_edge
  %newmod97 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %58 = ptrtoint ptr %newmod97 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %para, ptr %newmod97, align 1
  %newcmd98 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %59 = ptrtoint ptr %newcmd98 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -90, ptr %newcmd98, align 2
  %60 = ptrtoint ptr %state68 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %state68, align 1
  br label %if.then139

sw.bb102:                                         ; preds = %do.end
  %state103 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 6
  %61 = ptrtoint ptr %state103 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %state103, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.258)
  switch i8 %62, label %sw.bb102.if.else131_crit_edge [
    i8 1, label %if.then107
    i8 4, label %land.lhs.true119
  ]

sw.bb102.if.else131_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else131

if.then107:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %para, ptr %p1, align 1
  %65 = ptrtoint ptr %state103 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %state103, align 1
  %cmd109 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %66 = ptrtoint ptr %cmd109 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -91, ptr %cmd109, align 4
  %mod110 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %67 = ptrtoint ptr %mod110 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %para, ptr %mod110, align 1
  %newmod111 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %68 = ptrtoint ptr %newmod111 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %newmod111, align 1
  %newcmd112 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %69 = ptrtoint ptr %newcmd112 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %newcmd112, align 2
  %try_mod113 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 11
  %70 = ptrtoint ptr %try_mod113 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %try_mod113, align 4
  br label %if.then139

land.lhs.true119:                                 ; preds = %sw.bb102
  %cmd120 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 7
  %71 = ptrtoint ptr %cmd120 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cmd120, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %72)
  %cmp122 = icmp eq i8 %72, -91
  br i1 %cmp122, label %land.lhs.true124, label %land.lhs.true119.if.else131_crit_edge

land.lhs.true119.if.else131_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else131

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %mod125 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 8
  %73 = ptrtoint ptr %mod125 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mod125, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %para)
  %cmp128 = icmp eq i8 %74, %para
  br i1 %cmp128, label %if.then130, label %land.lhs.true124.if.else131_crit_edge

land.lhs.true124.if.else131_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else131

if.then130:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @deliver_status(ptr noundef %ch, i32 noundef 16400)
  br label %if.end144

if.else131:                                       ; preds = %land.lhs.true124.if.else131_crit_edge, %land.lhs.true119.if.else131_crit_edge, %sw.bb102.if.else131_crit_edge
  %newmod132 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 10
  %75 = ptrtoint ptr %newmod132 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %para, ptr %newmod132, align 1
  %newcmd133 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 9
  %76 = ptrtoint ptr %newcmd133 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -91, ptr %newcmd133, align 2
  %77 = ptrtoint ptr %state103 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 5, ptr %state103, align 1
  br label %if.then139

sw.bb137:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %para, ptr %p1, align 1
  br label %if.then139

if.then139:                                       ; preds = %sw.bb137, %if.else131, %if.then107, %if.else96, %if.then72, %if.else61, %if.then37, %if.else26, %if.then8
  %nom.0.ph = phi i8 [ 0, %if.else26 ], [ 1, %if.then8 ], [ 0, %if.else61 ], [ 1, %if.then37 ], [ 0, %if.else96 ], [ 1, %if.then72 ], [ 0, %if.else131 ], [ 1, %if.then107 ], [ 1, %sw.bb137 ]
  %ctrl.0.ph = phi i8 [ -92, %if.else26 ], [ -88, %if.then8 ], [ -92, %if.else61 ], [ -89, %if.then37 ], [ -92, %if.else96 ], [ -90, %if.then72 ], [ -92, %if.else131 ], [ -91, %if.then107 ], [ 90, %sw.bb137 ]
  %is140 = getelementptr inbounds %struct.isar_ch, ptr %ch, i32 0, i32 1
  %79 = ptrtoint ptr %is140 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %is140, align 4
  %81 = or i8 %shl, 42
  call fastcc void @send_mbox(ptr noundef %80, i8 noundef zeroext %81, i8 noundef zeroext %ctrl.0.ph, i8 noundef zeroext %nom.0.ph, ptr noundef nonnull %p1)
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %if.then130, %if.then95, %if.then60, %if.then25, %do.end.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftimer_handler(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftimer_handler.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftimer_handler, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !511

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 4
  %name = getelementptr inbounds %struct.isar_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %Flags = getelementptr i8, ptr %t, i32 -224
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ftimer_handler.__UNIQUE_ID_ddebug532, ptr noundef nonnull @.str.166, ptr noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %Flags5 = getelementptr i8, ptr %t, i32 -224
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 23, ptr noundef %Flags5) #8
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 25, ptr noundef %Flags5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end.if.end12_crit_edge, label %if.then11

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @deliver_status.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftimer_handler, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %is.i = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %is.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is.i, align 4
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @deliver_status.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.49, ptr noundef %9, i32 noundef 16400) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then11
  %peer.i.i = getelementptr i8, ptr %t, i32 -244
  %10 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end.i.if.end12_crit_edge, label %if.end.i.i

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i.i:                                       ; preds = %do.end.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end12_crit_edge, label %if.end.i.i.i, !prof !512

if.end.i.i.if.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 2050, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 16400, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr i8, ptr %t, i32 -236
  %18 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv.i.i, align 4
  %20 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %19(ptr noundef %21, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i.if.end12_crit_edge, label %if.then7.i.i

if.end.i.i.i.if.end12_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then7.i.i, %if.end.i.i.i.if.end12_crit_edge, %if.end.i.i.if.end12_crit_edge, %do.end.i.if.end12_crit_edge, %do.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_mbox(ptr noundef %isar) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %hw = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext 117) #8
  %4 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %entry.while.body_crit_edge, label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %t.02 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %dec = add i32 %t.02, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.do.body_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %9, i8 noundef zeroext 88) #8
  %iis.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 17
  %10 = ptrtoint ptr %iis.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call.i, ptr %iis.i, align 1
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %call3.i = tail call zeroext i8 %12(ptr noundef %14, i8 noundef zeroext 97) #8
  %cmsb.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 18
  %15 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call3.i, ptr %cmsb.i, align 2
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %call6.i = tail call zeroext i8 %17(ptr noundef %19, i8 noundef zeroext 96) #8
  %clsb.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %20 = ptrtoint ptr %clsb.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call6.i, ptr %clsb.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_irq_infos.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_mbox, %if.then.i)) #8
          to label %get_irq_infos.exit [label %if.then.i], !srcloc !511

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %23 = ptrtoint ptr %iis.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iis.i, align 1
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %cmsb.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmsb.i, align 2
  %conv12.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %clsb.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %clsb.i, align 1
  %conv14.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_irq_infos.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.15, ptr noundef %22, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #8
  br label %get_irq_infos.exit

get_irq_infos.exit:                               ; preds = %if.then.i, %if.then
  tail call fastcc void @rcv_mbox(ptr noundef %isar, ptr noundef null)
  br label %do.body

do.body:                                          ; preds = %get_irq_infos.exit, %while.body.do.body_crit_edge
  %t.0.lcssa7 = phi i32 [ 1000, %get_irq_infos.exit ], [ 0, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_mbox.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_mbox, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !511

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 3
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %clsb = getelementptr inbounds %struct.isar_hw, ptr %isar, i32 0, i32 19
  %31 = ptrtoint ptr %clsb to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %clsb, align 1
  %conv9 = zext i8 %32 to i32
  %sub = sub nuw nsw i32 1000, %t.0.lcssa7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_mbox.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.164, ptr noundef %30, i32 noundef %conv9, i32 noundef %sub) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 %t.0.lcssa7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isar_setup(ptr noundef %isar) unnamed_addr #1 align 64 {
entry:
  %msg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msg) #8
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 61, ptr %msg, align 1
  call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext 100, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %msg)
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %msg, align 1
  %mml = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 0, i32 5
  %3 = ptrtoint ptr %mml to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %mml, align 2
  %state = getelementptr inbounds %struct.bchannel, ptr %isar, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %dpath = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %dpath to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dpath, align 1
  %call8 = call fastcc i32 @modeisar(ptr noundef %isar, i32 noundef 0)
  call fastcc void @send_mbox(ptr noundef %isar, i8 noundef zeroext -92, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %msg)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg, align 1
  %arrayidx.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1
  %mml.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %mml.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mml.1, align 2
  %state.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %state.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.1, align 4
  %dpath.1 = getelementptr [2 x %struct.isar_ch], ptr %isar, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %dpath.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %dpath.1, align 1
  %call8.1 = call fastcc i32 @modeisar(ptr noundef %arrayidx.1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !263, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !333, !334, !335, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !368, !369, !370, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !385, !387, !388, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !404, !406, !407, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !461, !462, !463, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501}
!llvm.module.flags = !{!502, !503, !504, !505, !506, !507, !508, !509}
!llvm.ident = !{!510}

!0 = !{ptr @__UNIQUE_ID_author457, !1, !"__UNIQUE_ID_author457", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version460, !6, !"__UNIQUE_ID_version460", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 26, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1047, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug525, !12, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1068, i32 3}
!18 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug526, !17, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1094, i32 5}
!21 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug527, !20, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1098, i32 4}
!24 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug528, !23, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1110, i32 4}
!27 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug529, !26, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1123, i32 3}
!30 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug530, !29, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1127, i32 3}
!33 = !{ptr @mISDNisar_irq.__UNIQUE_ID_ddebug531, !32, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!34 = !{ptr @__ksymtab_mISDNisar_irq, !35, !"__ksymtab_mISDNisar_irq", i1 false, i1 false}
!35 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1132, i32 1}
!36 = !{ptr @__ksymtab_mISDNisar_init, !37, !"__ksymtab_mISDNisar_init", i1 false, i1 false}
!37 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1680, i32 1}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1690, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @isar_mod_cleanup._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @isar_mod_cleanup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__initcall__kmod_mISDNisar__538_1692_isar_mod_init6, !44, !"__initcall__kmod_mISDNisar__538_1692_isar_mod_init6", i1 false, i1 false}
!44 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1692, i32 1}
!45 = !{ptr @__exitcall_isar_mod_cleanup, !46, !"__exitcall_isar_mod_cleanup", i1 false, i1 false}
!46 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1693, i32 1}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 118, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @get_irq_infos.__UNIQUE_ID_ddebug465, !48, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 414, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug475, !52, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 425, i32 3}
!57 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug476, !56, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 434, i32 4}
!60 = !{ptr @isar_rcv_frame._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @isar_rcv_frame._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @isar_rcv_frame._entry.20, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 445, i32 4}
!64 = !{ptr @isar_rcv_frame._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 451, i32 4}
!67 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug477, !66, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 469, i32 5}
!70 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug478, !69, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 480, i32 4}
!73 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug479, !72, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 491, i32 5}
!76 = !{ptr @isar_rcv_frame._entry.25, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @isar_rcv_frame._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 499, i32 4}
!80 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug480, !79, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 502, i32 5}
!83 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug481, !82, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 517, i32 4}
!86 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug482, !85, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 527, i32 4}
!89 = !{ptr @isar_rcv_frame._entry.31, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @isar_rcv_frame._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 533, i32 4}
!93 = !{ptr @isar_rcv_frame._entry.34, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @isar_rcv_frame._entry_ptr.36, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 545, i32 5}
!97 = !{ptr @isar_rcv_frame._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @isar_rcv_frame._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @isar_rcv_frame.__UNIQUE_ID_ddebug483, !100, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!100 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 554, i32 4}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 566, i32 3}
!103 = !{ptr @isar_rcv_frame._entry.40, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @isar_rcv_frame._entry_ptr.42, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 60, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @send_mbox.__UNIQUE_ID_ddebug462, !106, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 74, i32 5}
!111 = !{ptr @send_mbox.__UNIQUE_ID_ddebug463, !110, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 47, i32 2}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @waitforHIA.__UNIQUE_ID_ddebug461, !113, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 403, i32 2}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @deliver_status.__UNIQUE_ID_ddebug474, !117, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 723, i32 2}
!122 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @check_send.__UNIQUE_ID_ddebug491, !121, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 579, i32 2}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @isar_fill_fifo.__UNIQUE_ID_ddebug484, !125, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 606, i32 3}
!130 = !{ptr @isar_fill_fifo.__UNIQUE_ID_ddebug485, !129, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 614, i32 6}
!133 = !{ptr @isar_fill_fifo.__UNIQUE_ID_ddebug486, !132, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 627, i32 3}
!136 = !{ptr @isar_fill_fifo._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @isar_fill_fifo._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 641, i32 4}
!140 = !{ptr @isar_fill_fifo.__UNIQUE_ID_ddebug487, !139, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 649, i32 4}
!143 = !{ptr @isar_fill_fifo.__UNIQUE_ID_ddebug488, !142, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 652, i32 3}
!146 = !{ptr @isar_fill_fifo._entry.59, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @isar_fill_fifo._entry_ptr.61, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 676, i32 2}
!150 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @send_next.__UNIQUE_ID_ddebug489, !149, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 682, i32 5}
!154 = !{ptr @send_next.__UNIQUE_ID_ddebug490, !153, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 103, i32 5}
!157 = !{ptr @rcv_mbox.__UNIQUE_ID_ddebug464, !156, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 808, i32 3}
!160 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug493, !159, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 811, i32 3}
!164 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug494, !163, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 815, i32 3}
!167 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug495, !166, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 820, i32 3}
!170 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug496, !169, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 823, i32 3}
!173 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug497, !172, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 826, i32 3}
!176 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug498, !175, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 829, i32 3}
!179 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug499, !178, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 834, i32 3}
!182 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug500, !181, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 837, i32 3}
!185 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug501, !184, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!186 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 840, i32 3}
!188 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug502, !187, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 843, i32 3}
!191 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug503, !190, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 846, i32 3}
!194 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug504, !193, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 849, i32 3}
!197 = !{ptr @isar_pump_statev_modem.__UNIQUE_ID_ddebug505, !196, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 852, i32 3}
!200 = !{ptr @isar_pump_statev_modem._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @isar_pump_statev_modem._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 864, i32 3}
!204 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug506, !203, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!205 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 867, i32 3}
!207 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug507, !206, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!208 = !{ptr @.str.83, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 879, i32 4}
!210 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug508, !209, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 884, i32 4}
!213 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug509, !212, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!214 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 890, i32 4}
!216 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug510, !215, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 895, i32 4}
!219 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug511, !218, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!220 = !{ptr @.str.87, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 901, i32 4}
!222 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug512, !221, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!223 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 906, i32 4}
!225 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug513, !224, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!226 = !{ptr @.str.89, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 912, i32 4}
!228 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug514, !227, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 917, i32 4}
!231 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug515, !230, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!232 = !{ptr @.str.91, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 923, i32 4}
!234 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug516, !233, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 942, i32 4}
!237 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug517, !236, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!238 = !{ptr @.str.93, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 947, i32 3}
!240 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug518, !239, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!241 = !{ptr @.str.94, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 950, i32 3}
!243 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug519, !242, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!244 = !{ptr @.str.95, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 979, i32 5}
!246 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug520, !245, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!247 = !{ptr @.str.96, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 998, i32 3}
!249 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug521, !248, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!250 = !{ptr @.str.97, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1012, i32 3}
!252 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug522, !251, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1016, i32 4}
!255 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug523, !254, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!256 = !{ptr @.str.99, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1024, i32 3}
!258 = !{ptr @isar_pump_statev_fax.__UNIQUE_ID_ddebug524, !257, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!259 = !{ptr @.str.100, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 760, i32 3}
!261 = !{ptr @.str.101, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @isar_pump_status_rsp._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @isar_pump_status_rsp._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 798, i32 22}
!266 = !{ptr @.str.103, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 799, i32 2}
!268 = !{ptr @isar_pump_status_rsp.__UNIQUE_ID_ddebug492, !267, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 31}
!271 = !{ptr @.str.105, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 43}
!273 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 54}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 64}
!277 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 75}
!279 = !{ptr @.str.109, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 10}
!281 = !{ptr @.str.110, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 17}
!283 = !{ptr @.str.111, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 24}
!285 = !{ptr @.str.112, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 32}
!287 = !{ptr @.str.113, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 40}
!289 = !{ptr @.str.114, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 747, i32 48}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 748, i32 10}
!293 = !{ptr @.str.116, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 748, i32 20}
!295 = !{ptr @.str.117, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 748, i32 29}
!297 = !{ptr @.str.118, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 748, i32 38}
!299 = !{ptr @.str.119, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 748, i32 47}
!301 = !{ptr @dmril, !302, !"dmril", i1 false, i1 false}
!302 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 746, i32 20}
!303 = !{ptr @.str.120, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 31}
!305 = !{ptr @.str.121, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 41}
!307 = !{ptr @.str.122, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 51}
!309 = !{ptr @.str.123, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 63}
!311 = !{ptr @.str.124, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 70}
!313 = !{ptr @.str.125, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 10}
!315 = !{ptr @.str.126, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 21}
!317 = !{ptr @.str.127, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 28}
!319 = !{ptr @.str.128, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 39}
!321 = !{ptr @.str.129, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 46}
!323 = !{ptr @.str.130, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 750, i32 53}
!325 = !{ptr @dmrim, !326, !"dmrim", i1 false, i1 false}
!326 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 749, i32 20}
!327 = !{ptr @.str.131, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1507, i32 3}
!329 = !{ptr @.str.132, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @isar_l2l1.__UNIQUE_ID_ddebug535, !328, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!331 = !{ptr @.str.133, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1525, i32 5}
!333 = !{ptr @isar_l2l1._entry, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @isar_l2l1._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.134, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1536, i32 5}
!337 = !{ptr @isar_l2l1.__UNIQUE_ID_ddebug536, !336, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!338 = !{ptr @.str.136, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1540, i32 5}
!340 = !{ptr @isar_l2l1._entry.135, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @isar_l2l1._entry_ptr.137, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.139, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1547, i32 4}
!344 = !{ptr @isar_l2l1._entry.138, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @isar_l2l1._entry_ptr.140, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.142, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1553, i32 3}
!348 = !{ptr @isar_l2l1._entry.141, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @isar_l2l1._entry_ptr.143, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.144, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1293, i32 5}
!352 = !{ptr @.str.145, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @modeisar._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @modeisar._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.147, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1309, i32 5}
!357 = !{ptr @modeisar._entry.146, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @modeisar._entry_ptr.148, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.150, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1315, i32 4}
!361 = !{ptr @modeisar._entry.149, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @modeisar._entry_ptr.151, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.152, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1320, i32 2}
!365 = !{ptr @modeisar.__UNIQUE_ID_ddebug533, !364, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!366 = !{ptr @.str.153, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1345, i32 2}
!368 = !{ptr @.str.154, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @isar_pump_cmd.__UNIQUE_ID_ddebug534, !367, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!370 = distinct !{null, !371, !"faxmodulation", i1 false, i1 false}
!371 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 30, i32 17}
!372 = !{ptr @.str.155, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1576, i32 2}
!374 = !{ptr @.str.156, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @isar_bctrl.__UNIQUE_ID_ddebug537, !373, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!376 = !{ptr @.str.157, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1594, i32 3}
!378 = !{ptr @isar_bctrl._entry, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @isar_bctrl._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.158, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1619, i32 4}
!382 = !{ptr @.str.159, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @init_isar._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @init_isar._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @init_isar.__key, !386, !"__key", i1 false, i1 false}
!386 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1627, i32 2}
!387 = !{ptr @.str.160, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @init_isar.__key.161, !389, !"__key", i1 false, i1 false}
!389 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1629, i32 2}
!390 = !{ptr @.str.162, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.163, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 142, i32 2}
!393 = !{ptr @.str.164, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @poll_mbox.__UNIQUE_ID_ddebug466, !392, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!395 = !{ptr @.str.165, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1139, i32 2}
!397 = !{ptr @.str.166, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @ftimer_handler.__UNIQUE_ID_ddebug532, !396, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!399 = !{ptr @.str.167, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 188, i32 3}
!401 = !{ptr @.str.168, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @load_firmware._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @load_firmware._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.169, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 194, i32 2}
!406 = !{ptr @load_firmware.__UNIQUE_ID_ddebug467, !405, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!407 = !{ptr @.str.170, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 207, i32 3}
!409 = !{ptr @load_firmware.__UNIQUE_ID_ddebug468, !408, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!410 = !{ptr @.str.172, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 211, i32 4}
!412 = !{ptr @load_firmware._entry.171, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @load_firmware._entry_ptr.173, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.175, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 219, i32 4}
!416 = !{ptr @load_firmware._entry.174, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @load_firmware._entry_ptr.176, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.178, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 224, i32 4}
!420 = !{ptr @load_firmware._entry.177, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @load_firmware._entry_ptr.179, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.181, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 230, i32 4}
!424 = !{ptr @load_firmware._entry.180, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @load_firmware._entry_ptr.182, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.183, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 248, i32 4}
!428 = !{ptr @load_firmware.__UNIQUE_ID_ddebug469, !427, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!429 = !{ptr @.str.185, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 259, i32 5}
!431 = !{ptr @load_firmware._entry.184, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @load_firmware._entry_ptr.186, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.188, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 264, i32 5}
!435 = !{ptr @load_firmware._entry.187, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @load_firmware._entry_ptr.189, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.191, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 271, i32 5}
!439 = !{ptr @load_firmware._entry.190, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @load_firmware._entry_ptr.192, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.193, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 277, i32 3}
!443 = !{ptr @load_firmware.__UNIQUE_ID_ddebug470, !442, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!444 = !{ptr @.str.195, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 290, i32 3}
!446 = !{ptr @load_firmware._entry.194, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @load_firmware._entry_ptr.196, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.198, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 295, i32 3}
!450 = !{ptr @load_firmware._entry.197, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @load_firmware._entry_ptr.199, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.201, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 300, i32 3}
!454 = !{ptr @load_firmware._entry.200, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @load_firmware._entry_ptr.202, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.203, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 305, i32 3}
!458 = !{ptr @load_firmware.__UNIQUE_ID_ddebug471, !457, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!459 = !{ptr @.str.205, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 317, i32 3}
!461 = !{ptr @load_firmware._entry.204, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @load_firmware._entry_ptr.206, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.207, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 321, i32 3}
!465 = !{ptr @load_firmware.__UNIQUE_ID_ddebug472, !464, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!466 = !{ptr @.str.209, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 330, i32 3}
!468 = !{ptr @load_firmware._entry.208, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @load_firmware._entry_ptr.210, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.212, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 342, i32 3}
!472 = !{ptr @load_firmware._entry.211, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @load_firmware._entry_ptr.213, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.214, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 348, i32 3}
!476 = !{ptr @load_firmware.__UNIQUE_ID_ddebug473, !475, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!477 = !{ptr @.str.216, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 350, i32 3}
!479 = !{ptr @load_firmware._entry.215, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @load_firmware._entry_ptr.217, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.219, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 358, i32 3}
!483 = !{ptr @load_firmware._entry.218, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @load_firmware._entry_ptr.220, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.222, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 370, i32 3}
!487 = !{ptr @load_firmware._entry.221, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @load_firmware._entry_ptr.223, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.225, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 375, i32 4}
!491 = !{ptr @load_firmware._entry.224, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @load_firmware._entry_ptr.226, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.228, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 378, i32 4}
!495 = !{ptr @load_firmware._entry.227, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @load_firmware._entry_ptr.229, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.230, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/isdn/hardware/mISDN/mISDNisar.c", i32 1684, i32 2}
!499 = !{ptr @.str.231, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @isar_mod_init._entry, !498, !"_entry", i1 false, i1 false}
!501 = !{ptr @isar_mod_init._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!502 = !{i32 1, !"wchar_size", i32 2}
!503 = !{i32 1, !"min_enum_size", i32 4}
!504 = !{i32 8, !"branch-target-enforcement", i32 0}
!505 = !{i32 8, !"sign-return-address", i32 0}
!506 = !{i32 8, !"sign-return-address-all", i32 0}
!507 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!508 = !{i32 7, !"uwtable", i32 1}
!509 = !{i32 7, !"frame-pointer", i32 2}
!510 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!511 = !{i64 2148218621, i64 2148218626, i64 2148218639, i64 2148218683, i64 2148218717, i64 2148218738}
!512 = !{!"branch_weights", i32 1, i32 2000}
!513 = !{!"auto-init"}
