; ModuleID = '/llk/IR_all_yes/fs/cifs/netmisc.c_pt.bc'
source_filename = "../fs/cifs/netmisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smb_to_posix_error = type { i16, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nt_err_code_struct = type { ptr, i32 }
%struct.anon.159 = type { i8, i16, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.0, i8, i16, i16, %union.anon.1, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.0 = type { i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32, i32 }
%struct.anon = type { i8, i8, i16 }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timespec64 = type { i64, i32 }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@mapping_table_ERRDOS = internal constant { [39 x %struct.smb_to_posix_error], [72 x i8] } { [39 x %struct.smb_to_posix_error] [%struct.smb_to_posix_error { i16 1, i32 -22 }, %struct.smb_to_posix_error { i16 2, i32 -2 }, %struct.smb_to_posix_error { i16 3, i32 -20 }, %struct.smb_to_posix_error { i16 4, i32 -24 }, %struct.smb_to_posix_error { i16 5, i32 -13 }, %struct.smb_to_posix_error { i16 6, i32 -9 }, %struct.smb_to_posix_error { i16 7, i32 -5 }, %struct.smb_to_posix_error { i16 8, i32 -121 }, %struct.smb_to_posix_error { i16 9, i32 -14 }, %struct.smb_to_posix_error { i16 10, i32 -14 }, %struct.smb_to_posix_error { i16 11, i32 -22 }, %struct.smb_to_posix_error { i16 12, i32 -13 }, %struct.smb_to_posix_error { i16 13, i32 -5 }, %struct.smb_to_posix_error { i16 15, i32 -6 }, %struct.smb_to_posix_error { i16 16, i32 -13 }, %struct.smb_to_posix_error { i16 17, i32 -18 }, %struct.smb_to_posix_error { i16 18, i32 -2 }, %struct.smb_to_posix_error { i16 19, i32 -30 }, %struct.smb_to_posix_error { i16 32, i32 -16 }, %struct.smb_to_posix_error { i16 33, i32 -13 }, %struct.smb_to_posix_error { i16 50, i32 -22 }, %struct.smb_to_posix_error { i16 67, i32 -6 }, %struct.smb_to_posix_error { i16 80, i32 -17 }, %struct.smb_to_posix_error { i16 87, i32 -22 }, %struct.smb_to_posix_error { i16 112, i32 -28 }, %struct.smb_to_posix_error { i16 123, i32 -2 }, %struct.smb_to_posix_error { i16 124, i32 -95 }, %struct.smb_to_posix_error { i16 145, i32 -39 }, %struct.smb_to_posix_error { i16 158, i32 -37 }, %struct.smb_to_posix_error { i16 173, i32 -37 }, %struct.smb_to_posix_error { i16 183, i32 -17 }, %struct.smb_to_posix_error { i16 234, i32 -75 }, %struct.smb_to_posix_error { i16 282, i32 -95 }, %struct.smb_to_posix_error { i16 512, i32 -122 }, %struct.smb_to_posix_error { i16 513, i32 -67 }, %struct.smb_to_posix_error { i16 2455, i32 -92 }, %struct.smb_to_posix_error { i16 -3, i32 -95 }, %struct.smb_to_posix_error { i16 -2, i32 -31 }, %struct.smb_to_posix_error zeroinitializer], [72 x i8] zeroinitializer }, align 32
@mapping_table_ERRSRV = internal constant { [37 x %struct.smb_to_posix_error], [88 x i8] } { [37 x %struct.smb_to_posix_error] [%struct.smb_to_posix_error { i16 1, i32 -5 }, %struct.smb_to_posix_error { i16 2, i32 -13 }, %struct.smb_to_posix_error { i16 3, i32 -66 }, %struct.smb_to_posix_error { i16 4, i32 -13 }, %struct.smb_to_posix_error { i16 5, i32 -6 }, %struct.smb_to_posix_error { i16 6, i32 -6 }, %struct.smb_to_posix_error { i16 7, i32 -6 }, %struct.smb_to_posix_error { i16 49, i32 -28 }, %struct.smb_to_posix_error { i16 50, i32 -28 }, %struct.smb_to_posix_error { i16 51, i32 -5 }, %struct.smb_to_posix_error { i16 52, i32 -9 }, %struct.smb_to_posix_error { i16 64, i32 -56 }, %struct.smb_to_posix_error { i16 65, i32 -5 }, %struct.smb_to_posix_error { i16 66, i32 -5 }, %struct.smb_to_posix_error { i16 67, i32 -22 }, %struct.smb_to_posix_error { i16 68, i32 -5 }, %struct.smb_to_posix_error { i16 69, i32 -22 }, %struct.smb_to_posix_error { i16 70, i32 -3 }, %struct.smb_to_posix_error { i16 71, i32 -22 }, %struct.smb_to_posix_error { i16 81, i32 -112 }, %struct.smb_to_posix_error { i16 82, i32 -112 }, %struct.smb_to_posix_error { i16 83, i32 -28 }, %struct.smb_to_posix_error { i16 87, i32 -87 }, %struct.smb_to_posix_error { i16 88, i32 -62 }, %struct.smb_to_posix_error { i16 89, i32 -121 }, %struct.smb_to_posix_error { i16 90, i32 -87 }, %struct.smb_to_posix_error { i16 91, i32 -13 }, %struct.smb_to_posix_error { i16 250, i32 -5 }, %struct.smb_to_posix_error { i16 251, i32 -5 }, %struct.smb_to_posix_error { i16 1024, i32 -105 }, %struct.smb_to_posix_error { i16 2238, i32 -13 }, %struct.smb_to_posix_error { i16 2239, i32 -127 }, %struct.smb_to_posix_error { i16 2240, i32 -13 }, %struct.smb_to_posix_error { i16 2241, i32 -13 }, %struct.smb_to_posix_error { i16 2242, i32 -127 }, %struct.smb_to_posix_error { i16 -1, i32 -22 }, %struct.smb_to_posix_error zeroinitializer], [88 x i8] zeroinitializer }, align 32
@map_smb_to_linux_error._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@map_smb_to_linux_error.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"map_smb_to_linux_error\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cifs/netmisc.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CIFS: %s: Mapping smb error code 0x%x to POSIX err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@map_and_check_smb_error._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@map_and_check_smb_error.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"map_and_check_smb_error\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: Server returned 0x%x, reconnecting session...\0A\00", [39 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cnvrtDosUnixTm\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: date %d time %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: Invalid time min %d sec %lld\0A\00", [53 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry_ptr = internal global ptr @cnvrtDosUnixTm._entry, section ".printk_index", align 4
@cnvrtDosUnixTm._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: Invalid hours %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry_ptr.14 = internal global ptr @cnvrtDosUnixTm._entry.12, section ".printk_index", align 4
@cnvrtDosUnixTm._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.3, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: Invalid date, month %d day: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cnvrtDosUnixTm._entry_ptr.18 = internal global ptr @cnvrtDosUnixTm._entry.16, section ".printk_index", align 4
@total_days_of_prev_months = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], [48 x i8] zeroinitializer }, align 32
@cifs_inet_pton._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_inet_pton.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_inet_pton\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: address conversion returned %d for %*.*s\0A\00", [48 x i8] zeroinitializer }, align 32
@nt_errs = external dso_local local_unnamed_addr constant [0 x %struct.nt_err_code_struct], align 4
@cifs_print_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015CIFS: Status code returned 0x%08x %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_print_status\00", [46 x i8] zeroinitializer }, align 32
@cifs_print_status._entry_ptr = internal global ptr @cifs_print_status._entry, section ".printk_index", align 4
@ntstatus_to_dos_map = internal constant { [526 x %struct.anon.159], [1040 x i8] } { [526 x %struct.anon.159] [%struct.anon.159 { i8 1, i16 31, i32 -1073741823 }, %struct.anon.159 { i8 1, i16 1, i32 -1073741822 }, %struct.anon.159 { i8 1, i16 124, i32 -1073741821 }, %struct.anon.159 { i8 1, i16 24, i32 -1073741820 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741819 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741818 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741817 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741816 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741815 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741814 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741813 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741812 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741811 }, %struct.anon.159 { i8 1, i16 2, i32 -1073741810 }, %struct.anon.159 { i8 1, i16 2, i32 -1073741809 }, %struct.anon.159 { i8 1, i16 1, i32 -1073741808 }, %struct.anon.159 { i8 1, i16 38, i32 -1073741807 }, %struct.anon.159 { i8 1, i16 34, i32 -1073741806 }, %struct.anon.159 { i8 1, i16 21, i32 -1073741805 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741804 }, %struct.anon.159 { i8 1, i16 27, i32 -1073741803 }, %struct.anon.159 { i8 1, i16 8, i32 -1073741801 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741800 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741799 }, %struct.anon.159 { i8 1, i16 87, i32 -2147483622 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741797 }, %struct.anon.159 { i8 1, i16 2142, i32 -1073741796 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741795 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741794 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741793 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741792 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741791 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741790 }, %struct.anon.159 { i8 1, i16 111, i32 -1073741789 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741788 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741787 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741786 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741785 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741784 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741783 }, %struct.anon.159 { i8 1, i16 158, i32 -1073741782 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741781 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741780 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741779 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741778 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741777 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741776 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741775 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741774 }, %struct.anon.159 { i8 1, i16 2, i32 -1073741773 }, %struct.anon.159 { i8 1, i16 2, i32 -1073741772 }, %struct.anon.159 { i8 1, i16 183, i32 -1073741771 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741770 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741769 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741768 }, %struct.anon.159 { i8 1, i16 161, i32 -1073741767 }, %struct.anon.159 { i8 1, i16 3, i32 -1073741766 }, %struct.anon.159 { i8 1, i16 161, i32 -1073741765 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741764 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741763 }, %struct.anon.159 { i8 1, i16 23, i32 -1073741762 }, %struct.anon.159 { i8 1, i16 23, i32 -1073741761 }, %struct.anon.159 { i8 1, i16 8, i32 -1073741760 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741759 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741758 }, %struct.anon.159 { i8 1, i16 32, i32 -1073741757 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741756 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741755 }, %struct.anon.159 { i8 1, i16 288, i32 -1073741754 }, %struct.anon.159 { i8 1, i16 298, i32 -1073741753 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741752 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741751 }, %struct.anon.159 { i8 1, i16 156, i32 -1073741750 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741749 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741748 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741747 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741746 }, %struct.anon.159 { i8 1, i16 282, i32 -1073741745 }, %struct.anon.159 { i8 1, i16 255, i32 -1073741744 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741743 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741742 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741741 }, %struct.anon.159 { i8 1, i16 33, i32 -1073741740 }, %struct.anon.159 { i8 1, i16 33, i32 -1073741739 }, %struct.anon.159 { i8 1, i16 2, i32 -1073741738 }, %struct.anon.159 { i8 1, i16 50, i32 -1073741737 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741736 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741735 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741734 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741733 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741732 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741731 }, %struct.anon.159 { i8 1, i16 2215, i32 -1073741730 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741729 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741728 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741727 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741726 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741725 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741724 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741723 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741722 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741721 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741720 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741719 }, %struct.anon.159 { i8 2, i16 2, i32 -1073741718 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741717 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741716 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741715 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741714 }, %struct.anon.159 { i8 2, i16 2241, i32 -1073741713 }, %struct.anon.159 { i8 2, i16 2240, i32 -1073741712 }, %struct.anon.159 { i8 2, i16 2242, i32 -1073741711 }, %struct.anon.159 { i8 2, i16 2239, i32 -1073741710 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741709 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741708 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741707 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741706 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741705 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741704 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741703 }, %struct.anon.159 { i8 1, i16 127, i32 -1073741702 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741701 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741700 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741699 }, %struct.anon.159 { i8 1, i16 158, i32 -1073741698 }, %struct.anon.159 { i8 1, i16 112, i32 -1073741697 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741696 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741695 }, %struct.anon.159 { i8 1, i16 68, i32 -1073741694 }, %struct.anon.159 { i8 1, i16 259, i32 -1073741693 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741692 }, %struct.anon.159 { i8 1, i16 259, i32 -1073741691 }, %struct.anon.159 { i8 1, i16 154, i32 -1073741690 }, %struct.anon.159 { i8 1, i16 14, i32 -1073741689 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741688 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741687 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741686 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741685 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741684 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741683 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741682 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741681 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741680 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741679 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741678 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741677 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741676 }, %struct.anon.159 { i8 1, i16 534, i32 -1073741675 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741674 }, %struct.anon.159 { i8 1, i16 8, i32 -1073741673 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741672 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741671 }, %struct.anon.159 { i8 1, i16 89, i32 -1073741670 }, %struct.anon.159 { i8 1, i16 3, i32 -1073741669 }, %struct.anon.159 { i8 1, i16 23, i32 -1073741668 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741667 }, %struct.anon.159 { i8 1, i16 21, i32 -1073741666 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741665 }, %struct.anon.159 { i8 1, i16 487, i32 -1073741664 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741663 }, %struct.anon.159 { i8 1, i16 19, i32 -1073741662 }, %struct.anon.159 { i8 1, i16 21, i32 -1073741661 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741660 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741659 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741658 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741657 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741656 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741655 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741654 }, %struct.anon.159 { i8 1, i16 231, i32 -1073741653 }, %struct.anon.159 { i8 1, i16 231, i32 -1073741652 }, %struct.anon.159 { i8 1, i16 230, i32 -1073741651 }, %struct.anon.159 { i8 1, i16 231, i32 -1073741650 }, %struct.anon.159 { i8 1, i16 1, i32 -1073741649 }, %struct.anon.159 { i8 1, i16 233, i32 -1073741648 }, %struct.anon.159 { i8 1, i16 232, i32 -1073741647 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741646 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741645 }, %struct.anon.159 { i8 1, i16 230, i32 -1073741644 }, %struct.anon.159 { i8 1, i16 121, i32 -1073741643 }, %struct.anon.159 { i8 1, i16 38, i32 -1073741642 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741641 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741640 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741639 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741638 }, %struct.anon.159 { i8 1, i16 50, i32 -1073741637 }, %struct.anon.159 { i8 1, i16 51, i32 -1073741636 }, %struct.anon.159 { i8 1, i16 52, i32 -1073741635 }, %struct.anon.159 { i8 1, i16 53, i32 -1073741634 }, %struct.anon.159 { i8 1, i16 54, i32 -1073741633 }, %struct.anon.159 { i8 1, i16 55, i32 -1073741632 }, %struct.anon.159 { i8 1, i16 56, i32 -1073741631 }, %struct.anon.159 { i8 1, i16 57, i32 -1073741630 }, %struct.anon.159 { i8 1, i16 58, i32 -1073741629 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741628 }, %struct.anon.159 { i8 1, i16 60, i32 -1073741627 }, %struct.anon.159 { i8 1, i16 61, i32 -1073741626 }, %struct.anon.159 { i8 1, i16 62, i32 -1073741625 }, %struct.anon.159 { i8 1, i16 63, i32 -1073741624 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741623 }, %struct.anon.159 { i8 1, i16 65, i32 -1073741622 }, %struct.anon.159 { i8 1, i16 66, i32 -1073741621 }, %struct.anon.159 { i8 1, i16 67, i32 -1073741620 }, %struct.anon.159 { i8 1, i16 68, i32 -1073741619 }, %struct.anon.159 { i8 1, i16 69, i32 -1073741618 }, %struct.anon.159 { i8 1, i16 70, i32 -1073741617 }, %struct.anon.159 { i8 1, i16 71, i32 -1073741616 }, %struct.anon.159 { i8 1, i16 72, i32 -1073741615 }, %struct.anon.159 { i8 1, i16 88, i32 -1073741614 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741613 }, %struct.anon.159 { i8 1, i16 17, i32 -1073741612 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741611 }, %struct.anon.159 { i8 1, i16 240, i32 -1073741610 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741609 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741608 }, %struct.anon.159 { i8 1, i16 232, i32 -1073741607 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741606 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741605 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741604 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741603 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741602 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741601 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741600 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741599 }, %struct.anon.159 { i8 1, i16 300, i32 -1073741598 }, %struct.anon.159 { i8 1, i16 301, i32 -1073741597 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741596 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741595 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741594 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741593 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741592 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741591 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741590 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741589 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741588 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741587 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741586 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741585 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741584 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741583 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741582 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741581 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741580 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741579 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741578 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741577 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741576 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741575 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741574 }, %struct.anon.159 { i8 1, i16 3, i32 -1073741573 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741572 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741571 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741570 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741569 }, %struct.anon.159 { i8 1, i16 203, i32 -1073741568 }, %struct.anon.159 { i8 1, i16 145, i32 -1073741567 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741566 }, %struct.anon.159 { i8 1, i16 267, i32 -1073741565 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741564 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741563 }, %struct.anon.159 { i8 1, i16 206, i32 -1073741562 }, %struct.anon.159 { i8 1, i16 2401, i32 -1073741561 }, %struct.anon.159 { i8 1, i16 2404, i32 -1073741560 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741559 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741558 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741557 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741556 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741555 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741554 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741553 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741552 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741551 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741550 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741549 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741548 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741547 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741546 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741545 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741544 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741543 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741542 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741541 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741540 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741539 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741538 }, %struct.anon.159 { i8 1, i16 4, i32 -1073741537 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741536 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741535 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741534 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741533 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741532 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741531 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741530 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741529 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741528 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741527 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741526 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741525 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741524 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741523 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741522 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741521 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741520 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741519 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741518 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741517 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741516 }, %struct.anon.159 { i8 1, i16 126, i32 -1073741515 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741514 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741513 }, %struct.anon.159 { i8 1, i16 182, i32 -1073741512 }, %struct.anon.159 { i8 1, i16 127, i32 -1073741511 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741510 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741509 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741508 }, %struct.anon.159 { i8 1, i16 51, i32 -1073741507 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741506 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741505 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741504 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741503 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741502 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741501 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741500 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741499 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741498 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741497 }, %struct.anon.159 { i8 1, i16 124, i32 -1073741496 }, %struct.anon.159 { i8 1, i16 86, i32 -1073741495 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741494 }, %struct.anon.159 { i8 1, i16 109, i32 -1073741493 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741492 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741491 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741490 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741489 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741488 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741487 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741486 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741485 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741484 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741483 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741482 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741481 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741480 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741479 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741478 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741477 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741476 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741475 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741474 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741473 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741472 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741471 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741470 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741469 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741468 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741467 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741466 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741465 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741464 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741463 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741462 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741461 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741460 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741459 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741458 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741457 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741456 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741455 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741454 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741453 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741452 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741451 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741450 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741449 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741448 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741447 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741446 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741445 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741444 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741443 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741442 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741441 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741440 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741439 }, %struct.anon.159 { i8 1, i16 87, i32 -1073741438 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741437 }, %struct.anon.159 { i8 1, i16 22, i32 -1073741436 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741435 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741434 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741433 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741432 }, %struct.anon.159 { i8 1, i16 19, i32 -1073741431 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741430 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741429 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741428 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741427 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741426 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741425 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741424 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741423 }, %struct.anon.159 { i8 1, i16 2455, i32 -1073741422 }, %struct.anon.159 { i8 2, i16 2239, i32 -1073741421 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741420 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741419 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741418 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741417 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741416 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741415 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741414 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741413 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741412 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741310 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741309 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741308 }, %struct.anon.159 { i8 1, i16 89, i32 -1073741307 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741306 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741305 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741304 }, %struct.anon.159 { i8 1, i16 68, i32 -1073741303 }, %struct.anon.159 { i8 1, i16 52, i32 -1073741302 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741301 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741300 }, %struct.anon.159 { i8 1, i16 64, i32 -1073741299 }, %struct.anon.159 { i8 1, i16 68, i32 -1073741298 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741297 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741296 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741295 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741294 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741293 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741292 }, %struct.anon.159 { i8 1, i16 59, i32 -1073741291 }, %struct.anon.159 { i8 1, i16 50, i32 -1073741290 }, %struct.anon.159 { i8 1, i16 50, i32 -1073741289 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741288 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741287 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741286 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741285 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741284 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741283 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741282 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741281 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741280 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741279 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741278 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741277 }, %struct.anon.159 { i8 2, i16 2242, i32 -1073741276 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741275 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741274 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741273 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741272 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741271 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741270 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741269 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741268 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741267 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741266 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741265 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741264 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741263 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741262 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741261 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741260 }, %struct.anon.159 { i8 1, i16 6, i32 -1073741259 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741258 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741257 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741256 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741255 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741254 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741253 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741252 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741251 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741250 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741249 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741248 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741247 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741246 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741245 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741244 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741243 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741242 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741241 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741240 }, %struct.anon.159 { i8 1, i16 193, i32 -1073741239 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741238 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741237 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741236 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741235 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741234 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741233 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741232 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741231 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741230 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741229 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741228 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741227 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741226 }, %struct.anon.159 { i8 2, i16 3, i32 -1073741225 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741224 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741223 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741222 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741221 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741220 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741219 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741218 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741217 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741216 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741215 }, %struct.anon.159 { i8 1, i16 182, i32 -1073741214 }, %struct.anon.159 { i8 1, i16 127, i32 -1073741213 }, %struct.anon.159 { i8 1, i16 288, i32 -1073741212 }, %struct.anon.159 { i8 1, i16 -2, i32 -1073741211 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741210 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741209 }, %struct.anon.159 { i8 1, i16 21, i32 -1073741202 }, %struct.anon.159 { i8 1, i16 161, i32 -1073741183 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741174 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741173 }, %struct.anon.159 { i8 3, i16 31, i32 -1073741172 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741171 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741170 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741169 }, %struct.anon.159 { i8 1, i16 5, i32 -1073741168 }, %struct.anon.159 { i8 1, i16 1, i32 -1073741156 }, %struct.anon.159 { i8 1, i16 -3, i32 -2147483603 }, %struct.anon.159 { i8 1, i16 124, i32 8126465 }, %struct.anon.159 zeroinitializer], [1040 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"mapping_table_ERRDOS\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 32, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"mapping_table_ERRSRV\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 74, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 874, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 897, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 978, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 983, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 987, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 991, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"total_days_of_prev_months\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 964, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 135, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 780, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"ntstatus_to_dos_map\00", align 1
@___asan_gen_.115 = private constant [21 x i8] c"../fs/cifs/netmisc.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 210, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @cifs_print_status._entry, ptr @cifs_print_status._entry_ptr, ptr @cnvrtDosUnixTm._entry, ptr @cnvrtDosUnixTm._entry.12, ptr @cnvrtDosUnixTm._entry.16, ptr @cnvrtDosUnixTm._entry_ptr, ptr @cnvrtDosUnixTm._entry_ptr.14, ptr @cnvrtDosUnixTm._entry_ptr.18, ptr @mapping_table_ERRDOS, ptr @mapping_table_ERRSRV, ptr @map_smb_to_linux_error._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @map_and_check_smb_error._rs, ptr @.str.5, ptr @.str.6, ptr @cnvrtDosUnixTm._rs, ptr @.str.7, ptr @.str.8, ptr @cnvrtDosUnixTm._rs.9, ptr @.str.10, ptr @cnvrtDosUnixTm._rs.11, ptr @.str.13, ptr @cnvrtDosUnixTm._rs.15, ptr @.str.17, ptr @total_days_of_prev_months, ptr @cifs_inet_pton._rs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ntstatus_to_dos_map], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_table_ERRDOS to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_table_ERRSRV to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_smb_to_linux_error._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_and_check_smb_error._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnvrtDosUnixTm._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_days_of_prev_months to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_inet_pton._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_print_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntstatus_to_dos_map to i32), i32 4208, i32 5248, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_convert_address(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %scope_id = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %scope_id) #10
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %dst, i32 0, i32 2
  %0 = call ptr @memset(ptr %scope_id, i32 255, i32 13)
  %call.i = tail call i32 @in4_pton(ptr noundef %src, i32 noundef %len, ptr noundef %sin_addr, i32 noundef 92, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_inet_pton.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_convert_address, %land.lhs.true.i)) #10
          to label %cifs_inet_pton.exit [label %land.lhs.true.i], !srcloc !60

land.lhs.true.i:                                  ; preds = %entry
  %call10.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_inet_pton._rs, ptr noundef nonnull @.str.19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cifs_inet_pton.exit_crit_edge, label %if.then12.i

land.lhs.true.i.cifs_inet_pton.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cifs_inet_pton.exit

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_inet_pton.descriptor, ptr noundef nonnull @.str.20, i32 noundef %call.i, i32 noundef %len, i32 noundef %len, ptr noundef %src) #10
  br label %cifs_inet_pton.exit

cifs_inet_pton.exit:                              ; preds = %if.then12.i, %land.lhs.true.i.cifs_inet_pton.exit_crit_edge, %entry
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %cifs_inet_pton.exit
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %dst, align 4
  br label %cleanup

if.end:                                           ; preds = %cifs_inet_pton.exit
  %call1 = tail call ptr @memchr(ptr noundef %src, i32 noundef 37, i32 noundef %len) #13
  %tobool2.not = icmp eq ptr %call1, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %src to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %tobool2.not, i32 %len, i32 %sub.ptr.sub
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %dst, i32 0, i32 3
  %call3.i = tail call i32 @in6_pton(ptr noundef %src, i32 noundef %cond, ptr noundef %sin6_addr, i32 noundef 92, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_inet_pton.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_convert_address, %land.lhs.true.i45)) #10
          to label %cifs_inet_pton.exit47 [label %land.lhs.true.i45], !srcloc !60

land.lhs.true.i45:                                ; preds = %if.end
  %call10.i43 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_inet_pton._rs, ptr noundef nonnull @.str.19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i43)
  %tobool11.not.i44 = icmp eq i32 %call10.i43, 0
  br i1 %tobool11.not.i44, label %land.lhs.true.i45.cifs_inet_pton.exit47_crit_edge, label %if.then12.i46

land.lhs.true.i45.cifs_inet_pton.exit47_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cifs_inet_pton.exit47

if.then12.i46:                                    ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_inet_pton.descriptor, ptr noundef nonnull @.str.20, i32 noundef %call3.i, i32 noundef %cond, i32 noundef %cond, ptr noundef %src) #10
  br label %cifs_inet_pton.exit47

cifs_inet_pton.exit47:                            ; preds = %if.then12.i46, %land.lhs.true.i45.cifs_inet_pton.exit47_crit_edge, %if.end
  %3 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %cifs_inet_pton.exit47.cleanup_crit_edge, label %if.end6

cifs_inet_pton.exit47.cleanup_crit_edge:          ; preds = %cifs_inet_pton.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %cifs_inet_pton.exit47
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 10, ptr %dst, align 4
  br i1 %tobool2.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %add.neg = xor i32 %cond, -1
  %sub = add i32 %add.neg, %len
  %5 = add i32 %sub, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %5)
  %6 = icmp ult i32 %5, -12
  br i1 %6, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call1, i32 1
  %7 = call ptr @memcpy(ptr %scope_id, ptr %add.ptr, i32 %sub)
  %arrayidx = getelementptr [13 x i8], ptr %scope_id, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %dst, i32 0, i32 4
  %call13 = call i32 @kstrtouint(ptr noundef nonnull %scope_id, i32 noundef 0, ptr noundef %sin6_scope_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  %cond15 = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %cifs_inet_pton.exit47.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %cifs_inet_pton.exit47.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ %cond15, %if.end11 ], [ %3, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %scope_id) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cifs_set_port(ptr nocapture noundef %addr, i16 noundef zeroext %port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %sin6_port.sink = phi ptr [ %sin6_port, %sw.bb1 ], [ %sin_port, %sw.bb ]
  %3 = ptrtoint ptr %sin6_port.sink to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %port, ptr %sin6_port.sink, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @map_smb_to_linux_error(ptr nocapture noundef readonly %buf, i1 noundef zeroext %logErr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %Flags2, align 1
  %4 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else13, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  %logErr.not = xor i1 %logErr, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 369098944, i32 %1)
  %cmp5.not = icmp eq i32 %1, 369098944
  %or.cond = select i1 %logErr.not, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nt_errs to i32))
  %6 = load ptr, ptr @nt_errs, align 4
  %cmp.not10.i = icmp eq ptr %6, null
  br i1 %cmp.not10.i, label %if.then7.for.body.i.preheader_crit_edge, label %if.then7.while.body.i_crit_edge

if.then7.while.body.i_crit_edge:                  ; preds = %if.then7
  br label %while.body.i

if.then7.for.body.i.preheader_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then7.while.body.i_crit_edge
  %7 = phi ptr [ %13, %if.end.i.while.body.i_crit_edge ], [ %6, %if.then7.while.body.i_crit_edge ]
  %idx.011.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then7.while.body.i_crit_edge ]
  %nt_errcode.i = getelementptr [0 x %struct.nt_err_code_struct], ptr @nt_errs, i32 0, i32 %idx.011.i, i32 1
  %8 = ptrtoint ptr %nt_errcode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nt_errcode.i, align 4
  %10 = xor i32 %9, %5
  %11 = and i32 %10, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i = icmp eq i32 %11, 0
  br i1 %cmp3.i, label %do.end.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %5, ptr noundef nonnull %7) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  %inc.i = add i32 %idx.011.i, 1
  %arrayidx.i = getelementptr [0 x %struct.nt_err_code_struct], ptr @nt_errs, i32 0, i32 %inc.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp eq ptr %13, null
  br i1 %cmp.not.i, label %if.end.i.for.body.i.preheader_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.else:                                          ; preds = %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and8 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else.for.body.i.preheader_crit_edge, label %if.then10

if.else.for.body.i.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then10:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nt_errs to i32))
  %15 = load ptr, ptr @nt_errs, align 4
  %cmp.not10.i114 = icmp eq ptr %15, null
  br i1 %cmp.not10.i114, label %if.then10.for.body.i.preheader_crit_edge, label %if.then10.while.body.i118_crit_edge

if.then10.while.body.i118_crit_edge:              ; preds = %if.then10
  br label %while.body.i118

if.then10.for.body.i.preheader_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

while.body.i118:                                  ; preds = %if.end.i124.while.body.i118_crit_edge, %if.then10.while.body.i118_crit_edge
  %16 = phi ptr [ %22, %if.end.i124.while.body.i118_crit_edge ], [ %15, %if.then10.while.body.i118_crit_edge ]
  %idx.011.i115 = phi i32 [ %inc.i121, %if.end.i124.while.body.i118_crit_edge ], [ 0, %if.then10.while.body.i118_crit_edge ]
  %nt_errcode.i116 = getelementptr [0 x %struct.nt_err_code_struct], ptr @nt_errs, i32 0, i32 %idx.011.i115, i32 1
  %17 = ptrtoint ptr %nt_errcode.i116 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nt_errcode.i116, align 4
  %19 = xor i32 %18, %5
  %20 = and i32 %19, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.i117 = icmp eq i32 %20, 0
  br i1 %cmp3.i117, label %do.end.i120, label %while.body.i118.if.end.i124_crit_edge

while.body.i118.if.end.i124_crit_edge:            ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i124

do.end.i120:                                      ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  %call.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %5, ptr noundef nonnull %16) #14
  br label %if.end.i124

if.end.i124:                                      ; preds = %do.end.i120, %while.body.i118.if.end.i124_crit_edge
  %inc.i121 = add i32 %idx.011.i115, 1
  %arrayidx.i122 = getelementptr [0 x %struct.nt_err_code_struct], ptr @nt_errs, i32 0, i32 %inc.i121
  %21 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i122, align 4
  %cmp.not.i123 = icmp eq ptr %22, null
  br i1 %cmp.not.i123, label %if.end.i124.for.body.i.preheader_crit_edge, label %if.end.i124.while.body.i118_crit_edge

if.end.i124.while.body.i118_crit_edge:            ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i118

if.end.i124.for.body.i.preheader_crit_edge:       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i124.for.body.i.preheader_crit_edge, %if.then10.for.body.i.preheader_crit_edge, %if.else.for.body.i.preheader_crit_edge, %if.end.i.for.body.i.preheader_crit_edge, %if.then7.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.020.i = phi i32 [ %inc.i126, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %ntstatus1.i = getelementptr [526 x %struct.anon.159], ptr @ntstatus_to_dos_map, i32 0, i32 %i.020.i, i32 2
  %23 = ptrtoint ptr %ntstatus1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ntstatus1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %5)
  %cmp4.i = icmp eq i32 %24, %5
  br i1 %cmp4.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le.i = getelementptr [526 x %struct.anon.159], ptr @ntstatus_to_dos_map, i32 0, i32 %i.020.i
  %dos_code.i = getelementptr [526 x %struct.anon.159], ptr @ntstatus_to_dos_map, i32 0, i32 %i.020.i, i32 1
  %25 = ptrtoint ptr %dos_code.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dos_code.i, align 2
  br label %if.end16

for.inc.i:                                        ; preds = %for.body.i
  %inc.i126 = add i32 %i.020.i, 1
  %27 = and i32 %inc.i126, 536870911
  %tobool.not.i = icmp eq i32 %27, 525
  br i1 %tobool.not.i, label %for.inc.i.do.body70_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.body70_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

if.else13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %Error = getelementptr inbounds %struct.anon, ptr %Status, i32 0, i32 2
  %28 = ptrtoint ptr %Error to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %Error, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then5.i
  %smberrclass.1.in = phi ptr [ %Status, %if.else13 ], [ %arrayidx.le.i, %if.then5.i ]
  %smberrcode.0 = phi i16 [ %30, %if.else13 ], [ %26, %if.then5.i ]
  %31 = ptrtoint ptr %smberrclass.1.in to i32
  call void @__asan_load1_noabort(i32 %31)
  %smberrclass.1 = load i8, ptr %smberrclass.1.in, align 1
  %32 = zext i8 %smberrclass.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %smberrclass.1, label %if.end16.do.body70_crit_edge [
    i8 1, label %if.end16.if.else27_crit_edge
    i8 2, label %if.end16.if.else53_crit_edge
  ]

if.end16.if.else53_crit_edge:                     ; preds = %if.end16
  br label %if.else53

if.end16.if.else27_crit_edge:                     ; preds = %if.end16
  br label %if.else27

if.end16.do.body70_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

if.else27:                                        ; preds = %for.inc.if.else27_crit_edge, %if.end16.if.else27_crit_edge
  %i.0138159 = phi i32 [ %inc, %for.inc.if.else27_crit_edge ], [ 0, %if.end16.if.else27_crit_edge ]
  %arrayidx = getelementptr [39 x %struct.smb_to_posix_error], ptr @mapping_table_ERRDOS, i32 0, i32 %i.0138159
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %smberrcode.0)
  %cmp32 = icmp eq i16 %34, %smberrcode.0
  br i1 %cmp32, label %if.then34, label %for.inc

if.then34:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #12
  %posix_code = getelementptr [39 x %struct.smb_to_posix_error], ptr @mapping_table_ERRDOS, i32 0, i32 %i.0138159, i32 1
  br label %do.body70.sink.split

for.inc:                                          ; preds = %if.else27
  %inc = add nuw nsw i32 %i.0138159, 1
  %exitcond145 = icmp eq i32 %inc, 38
  br i1 %exitcond145, label %for.inc.do.body70_crit_edge, label %for.inc.if.else27_crit_edge

for.inc.if.else27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else27

for.inc.do.body70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

if.else53:                                        ; preds = %for.inc65.if.else53_crit_edge, %if.end16.if.else53_crit_edge
  %i.1137158 = phi i32 [ %inc66, %for.inc65.if.else53_crit_edge ], [ 0, %if.end16.if.else53_crit_edge ]
  %arrayidx47 = getelementptr [37 x %struct.smb_to_posix_error], ptr @mapping_table_ERRSRV, i32 0, i32 %i.1137158
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %smberrcode.0)
  %cmp58 = icmp eq i16 %36, %smberrcode.0
  br i1 %cmp58, label %if.then60, label %for.inc65

if.then60:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  %posix_code62 = getelementptr [37 x %struct.smb_to_posix_error], ptr @mapping_table_ERRSRV, i32 0, i32 %i.1137158, i32 1
  br label %do.body70.sink.split

for.inc65:                                        ; preds = %if.else53
  %inc66 = add nuw nsw i32 %i.1137158, 1
  %exitcond = icmp eq i32 %inc66, 36
  br i1 %exitcond, label %for.inc65.do.body70_crit_edge, label %for.inc65.if.else53_crit_edge

for.inc65.if.else53_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53

for.inc65.do.body70_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

do.body70.sink.split:                             ; preds = %if.then60, %if.then34
  %posix_code62.sink = phi ptr [ %posix_code62, %if.then60 ], [ %posix_code, %if.then34 ]
  %37 = ptrtoint ptr %posix_code62.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %posix_code62.sink, align 4
  br label %do.body70

do.body70:                                        ; preds = %do.body70.sink.split, %for.inc65.do.body70_crit_edge, %for.inc.do.body70_crit_edge, %if.end16.do.body70_crit_edge, %for.inc.i.do.body70_crit_edge
  %rc.0 = phi i32 [ -5, %if.end16.do.body70_crit_edge ], [ %38, %do.body70.sink.split ], [ -5, %for.inc.do.body70_crit_edge ], [ -5, %for.inc65.do.body70_crit_edge ], [ -5, %for.inc.i.do.body70_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %39 = load i32, ptr @cifsFYI, align 4
  %and71 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.body74

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body74:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @map_smb_to_linux_error.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@map_smb_to_linux_error, %land.lhs.true79)) #10
          to label %cleanup [label %land.lhs.true79], !srcloc !60

land.lhs.true79:                                  ; preds = %do.body74
  %call80 = tail call i32 @___ratelimit(ptr noundef nonnull @map_smb_to_linux_error._rs, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.cleanup_crit_edge, label %if.then82

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %Status, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @map_smb_to_linux_error.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %42, i32 noundef %rc.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %land.lhs.true79.cleanup_crit_edge, %do.body74, %do.body70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rc.0, %do.body70.cleanup_crit_edge ], [ %rc.0, %land.lhs.true79.cleanup_crit_edge ], [ %rc.0, %if.then82 ], [ %rc.0, %do.body74 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @map_and_check_smb_error(ptr nocapture noundef readonly %mid, i1 noundef zeroext %logErr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 16
  %0 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_buf, align 4
  %call = tail call i32 @map_smb_to_linux_error(ptr noundef %1, i1 noundef zeroext %logErr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call)
  %cmp = icmp eq i32 %call, -13
  br i1 %cmp, label %land.lhs.true, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %entry
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %Flags2, align 1
  %4 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not = icmp eq i16 %4, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then:                                          ; preds = %land.lhs.true
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %Status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp4 = icmp eq i8 %6, 2
  br i1 %cmp4, label %land.lhs.true6, label %if.then.if.end33_crit_edge

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true6:                                   ; preds = %if.then
  %Error = getelementptr inbounds %struct.anon, ptr %Status, i32 0, i32 2
  %7 = ptrtoint ptr %Error to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %Error, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 23296, i16 %8)
  %cmp8 = icmp eq i16 %8, 23296
  br i1 %cmp8, label %do.body11, label %land.lhs.true6.if.end33_crit_edge

land.lhs.true6.if.end33_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body11:                                        ; preds = %land.lhs.true6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and12 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end30_crit_edge, label %do.body15

do.body11.do.end30_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @map_and_check_smb_error.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@map_and_check_smb_error, %land.lhs.true21)) #10
          to label %do.end30 [label %land.lhs.true21], !srcloc !60

land.lhs.true21:                                  ; preds = %do.body15
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @map_and_check_smb_error._rs, ptr noundef nonnull @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end30_crit_edge, label %if.then24

land.lhs.true21.do.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @map_and_check_smb_error.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 91) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %land.lhs.true21.do.end30_crit_edge, %do.body15, %do.body11.do.end30_crit_edge
  %server = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 2
  %10 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server, align 4
  %call31 = tail call i32 @cifs_reconnect(ptr noundef %11, i1 noundef zeroext false) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %land.lhs.true6.if.end33_crit_edge, %if.then.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_reconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smbCalcSize(ptr nocapture noundef readonly %buf, ptr nocapture noundef readnone %server) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 13
  %0 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %WordCount, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add1 = add nuw nsw i32 %mul, 39
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 37
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul
  %2 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr1.i.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv2 = zext i16 %4 to i32
  %add3 = add nuw nsw i32 %add1, %conv2
  ret i32 %add3
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_NTtimeToUnix(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, i64 noundef %ntutc) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %ntutc)
  %sub = add i64 %2, -116444736000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.then222

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub1 = sub i64 116444736000000000, %2
  %conv18 = trunc i64 %sub1 to i32
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub1) #15, !srcloc !61
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub1, i64 %3, i32 0) #15, !srcloc !62
  %asmresult10.i = extractvalue { i64, i32 } %4, 0
  %div162580 = lshr i64 %asmresult10.i, 23
  %conv163 = trunc i64 %div162580 to i32
  %mul164.neg = mul i32 %conv163, -10000000
  %sub165 = add i32 %mul164.neg, %conv18
  %mul184.neg = mul i32 %sub165, -100
  %sub190 = sub nsw i64 0, %div162580
  br label %if.end418

if.then222:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv225 = trunc i64 %sub to i32
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub) #15, !srcloc !61
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub, i64 %5, i32 0) #15, !srcloc !62
  %asmresult10.i581 = extractvalue { i64, i32 } %6, 0
  %div387579 = lshr i64 %asmresult10.i581, 23
  %conv388 = trunc i64 %div387579 to i32
  %mul389.neg = mul i32 %conv388, -10000000
  %sub390 = add i32 %mul389.neg, %conv225
  %mul414 = mul i32 %sub390, 100
  br label %if.end418

if.end418:                                        ; preds = %if.then222, %if.then
  %mul414.sink = phi i32 [ %mul184.neg, %if.then ], [ %mul414, %if.then222 ]
  %storemerge = phi i64 [ %sub190, %if.then ], [ %div387579, %if.then222 ]
  %7 = getelementptr inbounds %struct.timespec64, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul414.sink, ptr %7, align 8
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %storemerge, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @cifs_UnixTimeToNT([2 x i64] %t.coerce) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t.coerce.fca.0.extract = extractvalue [2 x i64] %t.coerce, 0
  %t.coerce.fca.1.extract = extractvalue [2 x i64] %t.coerce, 1
  %t.sroa.2.8.extract.shift = lshr i64 %t.coerce.fca.1.extract, 32
  %t.sroa.2.8.extract.trunc = trunc i64 %t.sroa.2.8.extract.shift to i32
  %mul = mul i64 %t.coerce.fca.0.extract, 10000000
  %div = sdiv i32 %t.sroa.2.8.extract.trunc, 100
  %conv = sext i32 %div to i64
  %add = add i64 %mul, 116444736000000000
  %add1 = add i64 %add, %conv
  ret i64 %add1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cnvrtDosUnixTm(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, i16 noundef zeroext %le_date, i16 noundef zeroext %le_time, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 255, i32 16)
  %1 = tail call i16 @llvm.bswap.i16(i16 %le_date)
  %2 = tail call i16 @llvm.bswap.i16(i16 %le_time)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cnvrtDosUnixTm.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cnvrtDosUnixTm, %land.lhs.true)) #10
          to label %do.end14 [label %land.lhs.true], !srcloc !60

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cnvrtDosUnixTm._rs, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end14_crit_edge, label %if.then8

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %1 to i32
  %conv9 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cnvrtDosUnixTm.descriptor, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv9) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  %4 = lshr i16 %2, 10
  %5 = and i16 %4, 62
  %6 = zext i16 %5 to i64
  %bf.lshr18 = lshr i16 %2, 5
  %bf.clear = and i16 %bf.lshr18, 63
  %conv19 = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %5)
  %cmp = icmp ugt i16 %5, 59
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %bf.clear)
  %cmp21 = icmp ugt i16 %bf.clear, 59
  %or.cond = select i1 %cmp, i1 true, i1 %cmp21
  br i1 %or.cond, label %do.body25, label %do.end14.if.end39_crit_edge

do.end14.if.end39_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.body25:                                        ; preds = %do.end14
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @cnvrtDosUnixTm._rs.9, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body25.if.end39_crit_edge, label %do.end31

do.body25.if.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv19, i64 noundef %6) #14
  br label %if.end39

if.end39:                                         ; preds = %do.end31, %do.body25.if.end39_crit_edge, %do.end14.if.end39_crit_edge
  %bf.clear43 = and i16 %2, 31
  %conv44 = zext i16 %bf.clear43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %bf.clear43)
  %cmp51 = icmp ugt i16 %bf.clear43, 24
  br i1 %cmp51, label %do.body55, label %if.end39.if.end72_crit_edge

if.end39.if.end72_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.body55:                                        ; preds = %if.end39
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @cnvrtDosUnixTm._rs.11, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body55.if.end72_crit_edge, label %do.end61

do.body55.if.end72_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv44) #14
  br label %if.end72

if.end72:                                         ; preds = %do.end61, %do.body55.if.end72_crit_edge, %if.end39.if.end72_crit_edge
  %bf.lshr74 = lshr i16 %1, 11
  %conv75 = zext i16 %bf.lshr74 to i32
  %bf.lshr77 = lshr i16 %1, 7
  %bf.clear78 = and i16 %bf.lshr77, 15
  %conv79 = zext i16 %bf.clear78 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp80 = icmp ult i16 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear78)
  %cmp86 = icmp eq i16 %bf.clear78, 0
  %or.cond214 = select i1 %cmp80, i1 true, i1 %cmp86
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %bf.clear78)
  %cmp89 = icmp ugt i16 %bf.clear78, 12
  %or.cond215 = select i1 %or.cond214, i1 true, i1 %cmp89
  br i1 %or.cond215, label %do.body93, label %if.end72.if.end131_crit_edge

if.end72.if.end131_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

do.body93:                                        ; preds = %if.end72
  %call94 = tail call i32 @___ratelimit(ptr noundef nonnull @cnvrtDosUnixTm._rs.15, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.body93.do.end106_crit_edge, label %do.end99

do.body93.do.end106_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv79, i32 noundef %conv75) #14
  br label %do.end106

do.end106:                                        ; preds = %do.end99, %do.body93.do.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp108 = icmp ugt i16 %1, 4095
  %conv75. = select i1 %cmp108, i32 %conv75, i32 1
  %7 = tail call i16 @llvm.umax.i16(i16 %bf.clear78, i16 1)
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 12)
  %9 = zext i16 %8 to i32
  br label %if.end131

if.end131:                                        ; preds = %do.end106, %if.end72.if.end131_crit_edge
  %month.0 = phi i32 [ %9, %do.end106 ], [ %conv79, %if.end72.if.end131_crit_edge ]
  %day.0 = phi i32 [ %conv75., %do.end106 ], [ %conv75, %if.end72.if.end131_crit_edge ]
  %sub = add nsw i32 %month.0, -1
  %arrayidx = getelementptr [12 x i32], ptr @total_days_of_prev_months, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add132 = add i32 %11, %day.0
  %conv133 = sext i32 %add132 to i64
  %bf.clear136 = and i16 %1, 127
  %conv137 = zext i16 %bf.clear136 to i32
  %mul138 = mul nuw nsw i32 %conv137, 365
  %12 = zext i32 %mul138 to i64
  %div213 = lshr i32 %conv137, 2
  %13 = zext i32 %div213 to i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %bf.clear136)
  %cmp143 = icmp ugt i16 %bf.clear136, 119
  %add134 = select i1 %cmp143, i64 3651, i64 3652
  %add140 = add nuw nsw i64 %add134, %12
  %add142 = add nuw nsw i64 %add140, %13
  %spec.select = add nsw i64 %add142, %conv133
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %bf.clear136)
  %cmp148.not = icmp eq i16 %bf.clear136, 120
  br i1 %cmp148.not, label %if.end131.if.end160_crit_edge, label %if.then150

if.end131.if.end160_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then150:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %and151 = and i32 %conv137, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %cmp152 = icmp eq i32 %and151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %month.0)
  %cmp154 = icmp ult i32 %month.0, 3
  %narrow = select i1 %cmp152, i1 %cmp154, i1 false
  %.neg = sext i1 %narrow to i64
  %sub159 = add nsw i64 %spec.select, %.neg
  br label %if.end160

if.end160:                                        ; preds = %if.then150, %if.end131.if.end160_crit_edge
  %days.1 = phi i64 [ %sub159, %if.then150 ], [ %spec.select, %if.end131.if.end160_crit_edge ]
  %mul40 = mul nuw nsw i32 %conv19, 60
  %14 = zext i32 %mul40 to i64
  %mul45 = mul nuw nsw i32 %conv44, 3600
  %15 = zext i32 %mul45 to i64
  %mul161 = mul nsw i64 %days.1, 86400
  %conv163 = sext i32 %offset to i64
  %add = add nsw i64 %6, %conv163
  %add47 = add nsw i64 %add, %15
  %add162 = add nsw i64 %add47, %14
  %add164 = add nsw i64 %add162, %mul161
  %16 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add164, ptr %agg.result, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %agg.result, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/netmisc.c", i32 874, i32 2}
!2 = !{ptr @map_smb_to_linux_error._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @map_smb_to_linux_error.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @map_and_check_smb_error._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/netmisc.c", i32 897, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @map_and_check_smb_error.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = !{ptr @cnvrtDosUnixTm._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/netmisc.c", i32 978, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cnvrtDosUnixTm.descriptor, !14, !"descriptor", i1 false, i1 false}
!18 = !{ptr @cnvrtDosUnixTm._rs.9, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/netmisc.c", i32 983, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cnvrtDosUnixTm._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @cnvrtDosUnixTm._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cnvrtDosUnixTm._rs.11, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/netmisc.c", i32 987, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cnvrtDosUnixTm._entry.12, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cnvrtDosUnixTm._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cnvrtDosUnixTm._rs.15, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/cifs/netmisc.c", i32 991, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cnvrtDosUnixTm._entry.16, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cnvrtDosUnixTm._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cifs_inet_pton._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/cifs/netmisc.c", i32 135, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_inet_pton.descriptor, !34, !"descriptor", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/cifs/netmisc.c", i32 780, i32 4}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_print_status._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cifs_print_status._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ntstatus_to_dos_map, !44, !"ntstatus_to_dos_map", i1 false, i1 false}
!44 = !{!"../fs/cifs/netmisc.c", i32 210, i32 3}
!45 = !{ptr @mapping_table_ERRDOS, !46, !"mapping_table_ERRDOS", i1 false, i1 false}
!46 = !{!"../fs/cifs/netmisc.c", i32 32, i32 40}
!47 = !{ptr @mapping_table_ERRSRV, !48, !"mapping_table_ERRSRV", i1 false, i1 false}
!48 = !{!"../fs/cifs/netmisc.c", i32 74, i32 40}
!49 = !{ptr @total_days_of_prev_months, !50, !"total_days_of_prev_months", i1 false, i1 false}
!50 = !{!"../fs/cifs/netmisc.c", i32 964, i32 18}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148201224, i64 2148201229, i64 2148201242, i64 2148201286, i64 2148201320, i64 2148201341}
!61 = !{i64 1271957, i64 1271984}
!62 = !{i64 1272652, i64 1272679, i64 1272712, i64 1272733, i64 1272760, i64 1272786}
