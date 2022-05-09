; ModuleID = '/llk/IR_all_yes/fs/proc/vmcore.c_pt.bc'
source_filename = "../fs/proc/vmcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_vmcore_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_register_vmcore_cb\09\09\09\09"
module asm "\09.long\09__crc_register_vmcore_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_vmcore_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22register_vmcore_cb\22\09\09\09\09\09"
module asm "__kstrtabns_register_vmcore_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_vmcore_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_vmcore_cb\09\09\09\09"
module asm "\09.long\09__crc_unregister_vmcore_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_vmcore_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_vmcore_cb\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_vmcore_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmcore_add_device_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_vmcore_add_device_dump\09\09\09\09"
module asm "\09.long\09__crc_vmcore_add_device_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmcore_add_device_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22vmcore_add_device_dump\22\09\09\09\09\09"
module asm "__kstrtabns_vmcore_add_device_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vmcore_cb = type { ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.vmcoredd_header = type { i32, i32, i32, [8 x i8], [44 x i8] }
%struct.vmcoredd_node = type { %struct.list_head, ptr, i32 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmcore = type { %struct.list_head, i64, i64, i64 }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.76, ptr, %union.anon.77, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.elf32_note = type { i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__param_str_novmcoredd = internal constant [11 x i8] c"novmcoredd\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@vmcoredd_disabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_novmcoredd = internal constant %struct.kernel_param { ptr @__param_str_novmcoredd, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @vmcoredd_disabled } }, section "__param", align 4
@vmcore_cb_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @vmcore_cb_rwsem, i64 56), ptr getelementptr (i8, ptr @vmcore_cb_rwsem, i64 56) }, ptr @vmcore_cb_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@vmcore_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vmcore_cb_list, ptr @vmcore_cb_list }, [24 x i8] zeroinitializer }, align 32
@vmcore_opened = internal global { i1, [31 x i8] } zeroinitializer, align 32
@register_vmcore_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_vmcore_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Unexpected vmcore callback registration\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"register_vmcore_cb\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/proc/vmcore.c\00", [47 x i8] zeroinitializer }, align 32
@register_vmcore_cb._entry_ptr = internal global ptr @register_vmcore_cb._entry, section ".printk_index", align 4
@__kstrtab_register_vmcore_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_vmcore_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_register_vmcore_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_vmcore_cb to i32), ptr @__kstrtab_register_vmcore_cb, ptr @__kstrtabns_register_vmcore_cb }, section "___ksymtab_gpl+register_vmcore_cb", align 4
@unregister_vmcore_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@unregister_vmcore_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Unexpected vmcore callback unregistration\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unregister_vmcore_cb\00", [43 x i8] zeroinitializer }, align 32
@unregister_vmcore_cb._entry_ptr = internal global ptr @unregister_vmcore_cb._entry, section ".printk_index", align 4
@__kstrtab_unregister_vmcore_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_vmcore_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_vmcore_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_vmcore_cb to i32), ptr @__kstrtab_unregister_vmcore_cb, ptr @__kstrtabns_unregister_vmcore_cb }, section "___ksymtab_gpl+unregister_vmcore_cb", align 4
@vmcore_add_device_dump.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmcore_add_device_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Device dump is disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vmcore_add_device_dump\00", [41 x i8] zeroinitializer }, align 32
@vmcore_add_device_dump._entry_ptr = internal global ptr @vmcore_add_device_dump._entry, section ".printk_index", align 4
@vmcoredd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vmcoredd_mutex, i64 52), ptr getelementptr (i8, ptr @vmcoredd_mutex, i64 52) }, ptr @vmcoredd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@vmcoredd_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vmcoredd_list, ptr @vmcoredd_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_vmcore_add_device_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmcore_add_device_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_vmcore_add_device_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmcore_add_device_dump to i32), ptr @__kstrtab_vmcore_add_device_dump, ptr @__kstrtabns_vmcore_add_device_dump }, section "___ksymtab+vmcore_add_device_dump", align 4
@__initcall__kmod_proc__266_1597_vmcore_init5 = internal global ptr @vmcore_init, section ".initcall5.init", align 4
@proc_vmcore = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vmcore_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vmcore_list, ptr @vmcore_list }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vmcore_cb_rwsem.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vmcore_cb_rwsem\00", [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vmcoredd_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vmcoredd_mutex\00", [17 x i8] zeroinitializer }, align 32
@vmcoredd_orig_sz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@elfnotes_orig_sz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@elfnotes_sz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@elfcorebuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@elfcorebuf_sz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vmcore_size = internal global { i64, [24 x i8] } zeroinitializer, align 32
@elfcorehdr_addr = external dso_local global i64, align 8
@elfcorehdr_size = external dso_local global i64, align 8
@vmcore_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Kdump: vmcore not initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vmcore_init\00", [20 x i8] zeroinitializer }, align 32
@vmcore_init._entry_ptr = internal global ptr @vmcore_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmcore\00", [25 x i8] zeroinitializer }, align 32
@vmcore_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @open_vmcore, ptr @read_vmcore, ptr null, ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr @mmap_vmcore, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@parse_crash_elf_headers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Warning: Core image elf header not found\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parse_crash_elf_headers\00", [40 x i8] zeroinitializer }, align 32
@parse_crash_elf_headers._entry_ptr = internal global ptr @parse_crash_elf_headers._entry, section ".printk_index", align 4
@parse_crash_elf_headers._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Warning: Core image elf header is not sane\0A\00", [50 x i8] zeroinitializer }, align 32
@parse_crash_elf_headers._entry_ptr.20 = internal global ptr @parse_crash_elf_headers._entry.18, section ".printk_index", align 4
@parse_crash_elf64_headers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parse_crash_elf64_headers\00", [38 x i8] zeroinitializer }, align 32
@parse_crash_elf64_headers._entry_ptr = internal global ptr @parse_crash_elf64_headers._entry, section ".printk_index", align 4
@elfcorebuf_sz_orig = internal global { i32, [28 x i8] } zeroinitializer, align 32
@elfnotes_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@update_note_header_size_elf64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014Warning: Exceeded p_memsz, dropping PT_NOTE entry n_namesz=0x%x, n_descsz=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"update_note_header_size_elf64\00", [34 x i8] zeroinitializer }, align 32
@update_note_header_size_elf64._entry_ptr = internal global ptr @update_note_header_size_elf64._entry, section ".printk_index", align 4
@update_note_header_size_elf64._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Warning: Zero PT_NOTE entries found\0A\00", [57 x i8] zeroinitializer }, align 32
@update_note_header_size_elf64._entry_ptr.26 = internal global ptr @update_note_header_size_elf64._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_crash_elf32_headers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.27, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parse_crash_elf32_headers\00", [38 x i8] zeroinitializer }, align 32
@parse_crash_elf32_headers._entry_ptr = internal global ptr @parse_crash_elf32_headers._entry, section ".printk_index", align 4
@update_note_header_size_elf32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.28, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"update_note_header_size_elf32\00", [34 x i8] zeroinitializer }, align 32
@update_note_header_size_elf32._entry_ptr = internal global ptr @update_note_header_size_elf32._entry, section ".printk_index", align 4
@update_note_header_size_elf32._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@update_note_header_size_elf32._entry_ptr.30 = internal global ptr @update_note_header_size_elf32._entry.29, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vmcore_mmap_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmap_vmcore_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"vmcoredd_disabled\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 58, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"vmcore_cb_rwsem\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"vmcore_cb_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 67, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"vmcore_opened\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 81, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 96, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1497, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"vmcoredd_mutex\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"vmcoredd_list\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 55, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"proc_vmcore\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 51, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"vmcore_list\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 36, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 65, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 56, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"vmcoredd_orig_sz\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 63, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"elfnotes_orig_sz\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 46, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"elfnotes_sz\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 44, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"elfcorebuf\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 39, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"elfcorebuf_sz\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 40, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"vmcore_size\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 49, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1586, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1592, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"vmcore_proc_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 706, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1346, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1347, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1360, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1248, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"elfcorebuf_sz_orig\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 41, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"elfnotes_buf\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 43, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 768, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 778, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1304, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 959, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 969, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 230, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 214, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 174, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"vmcore_mmap_ops\00", align 1
@___asan_gen_.201 = private constant [20 x i8] c"../fs/proc/vmcore.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 474, i32 42 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_proc__266_1597_vmcore_init5, ptr @__ksymtab_register_vmcore_cb, ptr @__ksymtab_unregister_vmcore_cb, ptr @__ksymtab_vmcore_add_device_dump, ptr @__param_novmcoredd, ptr @parse_crash_elf32_headers._entry, ptr @parse_crash_elf32_headers._entry_ptr, ptr @parse_crash_elf64_headers._entry, ptr @parse_crash_elf64_headers._entry_ptr, ptr @parse_crash_elf_headers._entry, ptr @parse_crash_elf_headers._entry.18, ptr @parse_crash_elf_headers._entry_ptr, ptr @parse_crash_elf_headers._entry_ptr.20, ptr @register_vmcore_cb._entry, ptr @register_vmcore_cb._entry_ptr, ptr @unregister_vmcore_cb._entry, ptr @unregister_vmcore_cb._entry_ptr, ptr @update_note_header_size_elf32._entry, ptr @update_note_header_size_elf32._entry.29, ptr @update_note_header_size_elf32._entry_ptr, ptr @update_note_header_size_elf32._entry_ptr.30, ptr @update_note_header_size_elf64._entry, ptr @update_note_header_size_elf64._entry.24, ptr @update_note_header_size_elf64._entry_ptr, ptr @update_note_header_size_elf64._entry_ptr.26, ptr @vmcore_add_device_dump._entry, ptr @vmcore_add_device_dump._entry_ptr, ptr @vmcore_init._entry, ptr @vmcore_init._entry_ptr, ptr @vmcoredd_disabled, ptr @vmcore_cb_rwsem, ptr @vmcore_cb_list, ptr @vmcore_opened, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vmcoredd_mutex, ptr @vmcoredd_list, ptr @proc_vmcore, ptr @vmcore_list, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @vmcoredd_orig_sz, ptr @elfnotes_orig_sz, ptr @elfnotes_sz, ptr @elfcorebuf, ptr @elfcorebuf_sz, ptr @vmcore_size, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @vmcore_proc_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @elfcorebuf_sz_orig, ptr @elfnotes_buf, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @vmcore_mmap_ops], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoredd_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_cb_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_opened to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_vmcore_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_vmcore_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_add_device_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoredd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoredd_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_vmcore to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoredd_orig_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfnotes_orig_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfnotes_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfcorebuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfcorebuf_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crash_elf_headers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crash_elf_headers._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crash_elf64_headers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfcorebuf_sz_orig to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfnotes_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_note_header_size_elf64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_note_header_size_elf64._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crash_elf32_headers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_note_header_size_elf32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_note_header_size_elf32._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcore_mmap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_vmcore_cb(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @vmcore_cb_rwsem) #12
  %next = getelementptr inbounds %struct.vmcore_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %next, ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.vmcore_cb, ptr %cb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %next, ptr %prev.i, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vmcore_cb_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %2, ptr noundef nonnull @vmcore_cb_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %next, ptr getelementptr inbounds (%struct.list_head, ptr @vmcore_cb_list, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vmcore_cb_list, ptr %next, align 4
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %next, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %.b19 = load i1, ptr @vmcore_opened, align 1
  br i1 %.b19, label %land.end, label %list_add_tail.exit.if.end15_crit_edge

list_add_tail.exit.if.end15_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.end:                                         ; preds = %list_add_tail.exit
  %.b1820 = load i1, ptr @register_vmcore_cb.__already_done, align 1
  br i1 %.b1820, label %land.end.if.end15_crit_edge, label %if.then7, !prof !131

land.end.if.end15_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @register_vmcore_cb.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %land.end.if.end15_crit_edge, %list_add_tail.exit.if.end15_crit_edge
  tail call void @up_write(ptr noundef nonnull @vmcore_cb_rwsem) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_vmcore_cb(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @vmcore_cb_rwsem) #12
  %next = getelementptr inbounds %struct.vmcore_cb, ptr %cb, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.vmcore_cb, ptr %cb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.vmcore_cb, ptr %cb, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %.b17 = load i1, ptr @vmcore_opened, align 1
  br i1 %.b17, label %land.end, label %list_del.exit.if.end14_crit_edge

list_del.exit.if.end14_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.end:                                         ; preds = %list_del.exit
  %.b1618 = load i1, ptr @unregister_vmcore_cb.__already_done, align 1
  br i1 %.b1618, label %land.end.if.end14_crit_edge, label %if.then6, !prof !131

land.end.if.end14_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @unregister_vmcore_cb.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %land.end.if.end14_crit_edge, %list_del.exit.if.end14_crit_edge
  tail call void @up_write(ptr noundef nonnull @vmcore_cb_rwsem) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_from_oldmem(ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i32 noundef %userbuf, i1 noundef zeroext %encrypted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %2 = trunc i64 %1 to i32
  %conv = and i32 %2, 4095
  %div62 = lshr i64 %1, 12
  %conv1 = trunc i64 %div62 to i32
  tail call void @down_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %userbuf)
  %tobool7.not = icmp eq i32 %userbuf, 0
  br label %do.body

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %if.end
  %count.addr.0 = phi i32 [ %count, %if.end ], [ %sub28, %if.end26.do.body_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %if.end ], [ %add.ptr, %if.end26.do.body_crit_edge ]
  %pfn.0 = phi i32 [ %conv1, %if.end ], [ %inc, %if.end26.do.body_crit_edge ]
  %offset.0 = phi i32 [ %conv, %if.end ], [ 0, %if.end26.do.body_crit_edge ]
  %read.0 = phi i32 [ 0, %if.end ], [ %add29, %if.end26.do.body_crit_edge ]
  %sub = sub nuw nsw i32 4096, %offset.0
  %3 = tail call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %sub)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %land.rhs.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.body
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @vmcore_cb_rwsem, i32 0, i32 6), i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !132

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 106, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %.pn60.i = load ptr, ptr @vmcore_cb_list, align 4
  %cmp.not62.i = icmp eq ptr %.pn60.i, @vmcore_cb_list
  br i1 %cmp.not62.i, label %if.end.i.if.else15_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.else15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn63.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn60.i, %if.end.i.for.body.i_crit_edge ]
  %cb.064.i = getelementptr i8, ptr %.pn63.i, i32 -4
  %5 = ptrtoint ptr %cb.064.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb.064.i, align 4
  %tobool28.not.i = icmp eq ptr %6, null
  br i1 %tobool28.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end38.i, !prof !132

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end38.i:                                       ; preds = %for.body.i
  %call40.i = tail call zeroext i1 %6(ptr noundef %cb.064.i, i32 noundef %pfn.0) #12
  br i1 %call40.i, label %if.end38.i.for.inc.i_crit_edge, label %if.then6

if.end38.i.for.inc.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end38.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn63.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @vmcore_cb_list
  br i1 %cmp.not.i, label %for.inc.i.if.else15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else15_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

if.then6:                                         ; preds = %if.end38.i
  br i1 %tobool7.not, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %8 = call ptr @memset(ptr %buf.addr.0, i32 0, i32 %3)
  br label %if.end26

if.else9:                                         ; preds = %if.then6
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %3, i32 -1226833920) #16, !srcloc !133
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else9.clear_user.exit_crit_edge

if.else9.clear_user.exit_crit_edge:               ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_user.exit

if.then.i:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #7, !srcloc !134
  %and.i.i.i = and i32 %12, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %buf.addr.0, i32 noundef %3) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %clear_user.exit

clear_user.exit:                                  ; preds = %if.then.i, %if.else9.clear_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call1.i.i, %if.then.i ], [ %3, %if.else9.clear_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool11.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool11.not, label %clear_user.exit.if.end26_crit_edge, label %clear_user.exit.cleanup.sink.split_crit_edge

clear_user.exit.cleanup.sink.split_crit_edge:     ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

clear_user.exit.if.end26_crit_edge:               ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.else15:                                        ; preds = %for.inc.i.if.else15_crit_edge, %if.end.i.if.else15_crit_edge
  br i1 %encrypted, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 @copy_oldmem_page_encrypted(i32 noundef %pfn.0, ptr noundef %buf.addr.0, i32 noundef %3, i32 noundef %offset.0, i32 noundef %userbuf)
  br label %if.end22

if.else19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @copy_oldmem_page(i32 noundef %pfn.0, ptr noundef %buf.addr.0, i32 noundef %3, i32 noundef %offset.0, i32 noundef %userbuf) #12
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then17
  %tmp.0 = phi i32 [ %call18, %if.then17 ], [ %call20, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0)
  %cmp23 = icmp slt i32 %tmp.0, 0
  br i1 %cmp23, label %if.end22.cleanup.sink.split_crit_edge, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end22.if.end26_crit_edge, %clear_user.exit.if.end26_crit_edge, %if.then8
  %conv27 = zext i32 %3 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add = add i64 %14, %conv27
  store i64 %add, ptr %ppos, align 8
  %sub28 = sub i32 %count.addr.0, %3
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %3
  %add29 = add i32 %3, %read.0
  %inc = add i32 %pfn.0, 1
  %tobool30.not = icmp eq i32 %sub28, 0
  br i1 %tobool30.not, label %if.end26.cleanup.sink.split_crit_edge, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %clear_user.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %tmp.0, %if.end22.cleanup.sink.split_crit_edge ], [ -14, %clear_user.exit.cleanup.sink.split_crit_edge ], [ %add29, %if.end26.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @copy_oldmem_page_encrypted(i32 noundef %pfn, ptr noundef %buf, i32 noundef %csize, i32 noundef %offset, i32 noundef %userbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @copy_oldmem_page(i32 noundef %pfn, ptr noundef %buf, i32 noundef %csize, i32 noundef %offset, i32 noundef %userbuf) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_oldmem_page(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @elfcorehdr_alloc(ptr noundef %addr, ptr noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @elfcorehdr_free(i64 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @elfcorehdr_read(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @read_from_oldmem(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @elfcorehdr_read_notes(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @read_from_oldmem(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @remap_oldmem_pfn_range(ptr noundef %vma, i32 noundef %from, i32 noundef %pfn, i32 noundef %size, i32 noundef %prot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %from, i32 noundef %pfn, i32 noundef %size, i32 noundef %prot) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmcore_add_device_dump(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @vmcoredd_disabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end14, label %land.end

land.end:                                         ; preds = %entry
  %.b69 = load i1, ptr @vmcore_add_device_dump.__already_done, align 1
  br i1 %.b69, label %land.end.cleanup_crit_edge, label %if.then6, !prof !131

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vmcore_add_device_dump.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end14:                                         ; preds = %entry
  %tobool15.not = icmp eq ptr %data, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %lor.lhs.false

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end14
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %char0 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool17.not = icmp eq i8 %char0, 0
  br i1 %tobool17.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %vmcoredd_callback = getelementptr inbounds %struct.vmcoredd_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %vmcoredd_callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmcoredd_callback, align 4
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool19.not, label %lor.lhs.false18.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %size = getelementptr inbounds %struct.vmcoredd_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %lor.lhs.false20.cleanup_crit_edge, label %if.end23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %call24 = tail call noalias ptr @vzalloc(i32 noundef 16) #17
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.out_err_crit_edge, label %if.end27

if.end23.out_err_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end27:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add30 = add i32 %7, 4159
  %div68 = and i32 %add30, -4096
  %call.i = tail call noalias ptr @vmalloc_user(i32 noundef %div68) #17
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.end27.out_err_crit_edge, label %if.end34

if.end27.out_err_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end34:                                         ; preds = %if.end27
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %call.i, align 4
  %add.i = add i32 %div68, -20
  %n_descsz.i = getelementptr inbounds %struct.vmcoredd_header, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %n_descsz.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %n_descsz.i, align 4
  %n_type.i = getelementptr inbounds %struct.vmcoredd_header, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %n_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1792, ptr %n_type.i, align 4
  %name.i = getelementptr inbounds %struct.vmcoredd_header, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 5497010948637982720, ptr %name.i, align 1
  %dump_name.i = getelementptr inbounds %struct.vmcoredd_header, ptr %call.i, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %dump_name.i, ptr %data, i32 44)
  %13 = ptrtoint ptr %vmcoredd_callback to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vmcoredd_callback, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 64
  %call37 = tail call i32 %14(ptr noundef nonnull %data, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.out_err_crit_edge

if.end34.out_err_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end40:                                         ; preds = %if.end34
  %buf41 = getelementptr inbounds %struct.vmcoredd_node, ptr %call24, i32 0, i32 1
  %15 = ptrtoint ptr %buf41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %buf41, align 4
  %size42 = getelementptr inbounds %struct.vmcoredd_node, ptr %call24, i32 0, i32 2
  %16 = ptrtoint ptr %size42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div68, ptr %size42, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmcoredd_mutex, i32 noundef 0) #12
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vmcoredd_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call24, ptr noundef %17, ptr noundef nonnull @vmcoredd_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_add_tail.exit_crit_edge

if.end40.list_add_tail.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call24, ptr getelementptr inbounds (%struct.list_head, ptr @vmcoredd_list, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vmcoredd_list, ptr %call24, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call24, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end40.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  tail call fastcc void @vmcoredd_update_size(i32 noundef %div68)
  br label %cleanup

out_err:                                          ; preds = %if.end34.out_err_crit_edge, %if.end27.out_err_crit_edge, %if.end23.out_err_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end34.out_err_crit_edge ], [ -12, %if.end23.out_err_crit_edge ], [ -12, %if.end27.out_err_crit_edge ]
  %buf.0 = phi ptr [ %call.i, %if.end34.out_err_crit_edge ], [ null, %if.end23.out_err_crit_edge ], [ null, %if.end27.out_err_crit_edge ]
  tail call void @vfree(ptr noundef %buf.0) #12
  tail call void @vfree(ptr noundef %call24) #12
  br label %cleanup

cleanup:                                          ; preds = %out_err, %list_add_tail.exit, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then6, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ 0, %list_add_tail.exit ], [ -22, %if.then6 ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmcoredd_update_size(i32 noundef %dump_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vmcoredd_orig_sz, align 4
  %add = add i32 %0, %dump_size
  store i32 %add, ptr @vmcoredd_orig_sz, align 4
  %1 = load i32, ptr @elfnotes_orig_sz, align 4
  %add1 = add i32 %1, 4095
  %div5 = and i32 %add1, -4096
  %add2 = add i32 %div5, %add
  store i32 %add2, ptr @elfnotes_sz, align 4
  %2 = load ptr, ptr @elfcorebuf, align 4
  %3 = load i32, ptr @elfcorebuf_sz, align 4
  %add.i = add i32 %3, %add2
  %conv.i = zext i32 %add.i to i64
  %arrayidx.i = getelementptr i8, ptr %2, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %e_phnum.i = getelementptr inbounds %struct.elf64_hdr, ptr %2, i32 0, i32 10
  %6 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %e_phnum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4124.not.i = icmp eq i16 %7, 0
  br i1 %cmp4124.not.i, label %if.then.i.vmcoredd_update_program_headers.exit_crit_edge, label %for.body.preheader.i

if.then.i.vmcoredd_update_program_headers.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcoredd_update_program_headers.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  %add9.i = add i32 %1, %add
  %conv10.i = zext i32 %add9.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %vmcore_off.0128.i = phi i64 [ %vmcore_off.1.i, %for.inc.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %i.0127.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %phdr.0125.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %8 = ptrtoint ptr %phdr.0125.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phdr.0125.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp6.i = icmp eq i32 %9, 4
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %p_memsz.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0125.i, i32 0, i32 6
  %10 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv10.i, ptr %p_memsz.i, align 8
  %p_filesz.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0125.i, i32 0, i32 5
  %11 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv10.i, ptr %p_filesz.i, align 8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %p_offset.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0125.i, i32 0, i32 2
  %12 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %p_offset.i, align 8
  %rem.i = and i64 %13, 4095
  %sub.i = and i64 %13, -4096
  %p_memsz14.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0125.i, i32 0, i32 6
  %14 = ptrtoint ptr %p_memsz14.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %p_memsz14.i, align 8
  %add15.i = add i64 %13, 4095
  %add18.i = add i64 %add15.i, %15
  %div115.i = and i64 %add18.i, -4096
  %add24.i = add i64 %rem.i, %vmcore_off.0128.i
  store i64 %add24.i, ptr %p_offset.i, align 8
  %sub21.i = sub i64 %vmcore_off.0128.i, %sub.i
  %add26.i = add i64 %sub21.i, %div115.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then8.i
  %vmcore_off.1.i = phi i64 [ %vmcore_off.0128.i, %if.then8.i ], [ %add26.i, %if.end.i ]
  %inc.i = add nuw nsw i32 %i.0127.i, 1
  %incdec.ptr.i = getelementptr %struct.elf64_phdr, ptr %phdr.0125.i, i32 1
  %16 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %e_phnum.i, align 8
  %conv3.i = zext i16 %17 to i32
  %cmp4.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp4.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vmcoredd_update_program_headers.exit_crit_edge

for.inc.i.vmcoredd_update_program_headers.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcoredd_update_program_headers.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %entry
  %e_phnum31.i = getelementptr inbounds %struct.elf32_hdr, ptr %2, i32 0, i32 10
  %18 = ptrtoint ptr %e_phnum31.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %e_phnum31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp33118.not.i = icmp eq i16 %19, 0
  br i1 %cmp33118.not.i, label %if.else.i.vmcoredd_update_program_headers.exit_crit_edge, label %for.body35.preheader.i

if.else.i.vmcoredd_update_program_headers.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcoredd_update_program_headers.exit

for.body35.preheader.i:                           ; preds = %if.else.i
  %add.ptr29.i = getelementptr i8, ptr %2, i32 52
  %add40.i = add i32 %1, %add
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.inc69.i.for.body35.i_crit_edge, %for.body35.preheader.i
  %vmcore_off.2122.i = phi i64 [ %vmcore_off.3.i, %for.inc69.i.for.body35.i_crit_edge ], [ %conv.i, %for.body35.preheader.i ]
  %phdr28.0120.i = phi ptr [ %incdec.ptr71.i, %for.inc69.i.for.body35.i_crit_edge ], [ %add.ptr29.i, %for.body35.preheader.i ]
  %i.1119.i = phi i32 [ %inc70.i, %for.inc69.i.for.body35.i_crit_edge ], [ 0, %for.body35.preheader.i ]
  %20 = ptrtoint ptr %phdr28.0120.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phdr28.0120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp37.i = icmp eq i32 %21, 4
  br i1 %cmp37.i, label %if.then39.i, label %if.end44.i

if.then39.i:                                      ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %p_memsz41.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr28.0120.i, i32 0, i32 5
  %22 = ptrtoint ptr %p_memsz41.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add40.i, ptr %p_memsz41.i, align 4
  %p_filesz43.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr28.0120.i, i32 0, i32 4
  %23 = ptrtoint ptr %p_filesz43.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add40.i, ptr %p_filesz43.i, align 4
  br label %for.inc69.i

if.end44.i:                                       ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %p_offset46.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr28.0120.i, i32 0, i32 1
  %24 = ptrtoint ptr %p_offset46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_offset46.i, align 4
  %sub49.i = and i32 %25, -4096
  %conv50.i = zext i32 %sub49.i to i64
  %p_memsz54.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr28.0120.i, i32 0, i32 5
  %26 = ptrtoint ptr %p_memsz54.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_memsz54.i, align 4
  %add55.i = add i32 %25, 4095
  %add57.i = add i32 %add55.i, %27
  %div58114.i = and i32 %add57.i, -4096
  %conv60.i = zext i32 %div58114.i to i64
  %28 = trunc i64 %vmcore_off.2122.i to i32
  %29 = add i32 %25, %28
  %conv66.i = sub i32 %29, %sub49.i
  store i32 %conv66.i, ptr %p_offset46.i, align 4
  %sub61.i = sub i64 %vmcore_off.2122.i, %conv50.i
  %add68.i = add i64 %sub61.i, %conv60.i
  br label %for.inc69.i

for.inc69.i:                                      ; preds = %if.end44.i, %if.then39.i
  %vmcore_off.3.i = phi i64 [ %vmcore_off.2122.i, %if.then39.i ], [ %add68.i, %if.end44.i ]
  %inc70.i = add nuw nsw i32 %i.1119.i, 1
  %incdec.ptr71.i = getelementptr %struct.elf32_phdr, ptr %phdr28.0120.i, i32 1
  %30 = ptrtoint ptr %e_phnum31.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %e_phnum31.i, align 4
  %conv32.i = zext i16 %31 to i32
  %cmp33.i = icmp ult i32 %inc70.i, %conv32.i
  br i1 %cmp33.i, label %for.inc69.i.for.body35.i_crit_edge, label %for.inc69.i.vmcoredd_update_program_headers.exit_crit_edge

for.inc69.i.vmcoredd_update_program_headers.exit_crit_edge: ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcoredd_update_program_headers.exit

for.inc69.i.for.body35.i_crit_edge:               ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body35.i

vmcoredd_update_program_headers.exit:             ; preds = %for.inc69.i.vmcoredd_update_program_headers.exit_crit_edge, %if.else.i.vmcoredd_update_program_headers.exit_crit_edge, %for.inc.i.vmcoredd_update_program_headers.exit_crit_edge, %if.then.i.vmcoredd_update_program_headers.exit_crit_edge
  %m.01.i = load ptr, ptr @vmcore_list, align 4
  %cmp.not2.i = icmp eq ptr %m.01.i, @vmcore_list
  br i1 %cmp.not2.i, label %vmcoredd_update_program_headers.exit.get_vmcore_size.exit_crit_edge, label %vmcoredd_update_program_headers.exit.for.body.i9_crit_edge

vmcoredd_update_program_headers.exit.for.body.i9_crit_edge: ; preds = %vmcoredd_update_program_headers.exit
  br label %for.body.i9

vmcoredd_update_program_headers.exit.get_vmcore_size.exit_crit_edge: ; preds = %vmcoredd_update_program_headers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_vmcore_size.exit

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %vmcoredd_update_program_headers.exit.for.body.i9_crit_edge
  %m.04.i = phi ptr [ %m.0.i, %for.body.i9.for.body.i9_crit_edge ], [ %m.01.i, %vmcoredd_update_program_headers.exit.for.body.i9_crit_edge ]
  %vmcore_off.03.i = phi i64 [ %add2.i, %for.body.i9.for.body.i9_crit_edge ], [ %conv.i, %vmcoredd_update_program_headers.exit.for.body.i9_crit_edge ]
  %offset.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i, i32 0, i32 3
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %vmcore_off.03.i, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i, i32 0, i32 2
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size.i, align 8
  %add2.i = add i64 %34, %vmcore_off.03.i
  %35 = ptrtoint ptr %m.04.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %m.0.i = load ptr, ptr %m.04.i, align 4
  %cmp.not.i = icmp eq ptr %m.0.i, @vmcore_list
  br i1 %cmp.not.i, label %for.body.i9.for.body.i17_crit_edge, label %for.body.i9.for.body.i9_crit_edge

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i9

for.body.i9.for.body.i17_crit_edge:               ; preds = %for.body.i9
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %for.body.i9.for.body.i17_crit_edge
  %m.04.i14 = phi ptr [ %m.0.i15, %for.body.i17.for.body.i17_crit_edge ], [ %m.01.i, %for.body.i9.for.body.i17_crit_edge ]
  %size.03.i = phi i64 [ %add3.i, %for.body.i17.for.body.i17_crit_edge ], [ %conv.i, %for.body.i9.for.body.i17_crit_edge ]
  %size2.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i14, i32 0, i32 2
  %36 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size2.i, align 8
  %add3.i = add i64 %37, %size.03.i
  %38 = ptrtoint ptr %m.04.i14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %m.0.i15 = load ptr, ptr %m.04.i14, align 4
  %cmp.not.i16 = icmp eq ptr %m.0.i15, @vmcore_list
  br i1 %cmp.not.i16, label %for.body.i17.get_vmcore_size.exit_crit_edge, label %for.body.i17.for.body.i17_crit_edge

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i17

for.body.i17.get_vmcore_size.exit_crit_edge:      ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_vmcore_size.exit

get_vmcore_size.exit:                             ; preds = %for.body.i17.get_vmcore_size.exit_crit_edge, %vmcoredd_update_program_headers.exit.get_vmcore_size.exit_crit_edge
  %size.0.lcssa.i = phi i64 [ %conv.i, %vmcoredd_update_program_headers.exit.get_vmcore_size.exit_crit_edge ], [ %add3.i, %for.body.i17.get_vmcore_size.exit_crit_edge ]
  store i64 %size.0.lcssa.i, ptr @vmcore_size, align 8
  %39 = load ptr, ptr @proc_vmcore, align 4
  %size = getelementptr inbounds %struct.proc_dir_entry, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %size.0.lcssa.i, ptr %size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vmcore_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @elfcorehdr_alloc(ptr noundef nonnull @elfcorehdr_addr, ptr noundef nonnull @elfcorehdr_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %0 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %0)
  %1 = icmp ugt i64 %0, -3
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @parse_crash_elf_headers() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %2 = load i64, ptr @elfcorehdr_addr, align 8
  tail call void @elfcorehdr_free(i64 noundef %2)
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  store i64 -2, ptr @elfcorehdr_addr, align 8
  %call10 = tail call ptr @proc_create(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @vmcore_proc_ops) #12
  store ptr %call10, ptr @proc_vmcore, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %3 = load i64, ptr @vmcore_size, align 8
  %size = getelementptr inbounds %struct.proc_dir_entry, ptr %call10, i32 0, i32 16
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmcore_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_vmcore, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @proc_remove(ptr noundef nonnull %0) #12
  store ptr null, ptr @proc_vmcore, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load volatile ptr, ptr @vmcore_list, align 4
  %cmp.i.not5 = icmp eq ptr %1, @vmcore_list
  br i1 %cmp.i.not5, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %2 = phi ptr [ %11, %list_del.exit.while.body_crit_edge ], [ %1, %if.end.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #12
  %11 = load volatile ptr, ptr @vmcore_list, align 4
  %cmp.i.not = icmp eq ptr %11, @vmcore_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %12 = load ptr, ptr @elfcorebuf, align 4
  %13 = load i32, ptr @elfcorebuf_sz_orig, align 4
  %dec.i.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %14 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !138
  %sub.i.i.i = sub nuw nsw i32 32, %14
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %15 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %15, i32 noundef %cond.i.i.i) #12
  store ptr null, ptr @elfcorebuf, align 4
  %16 = load ptr, ptr @elfnotes_buf, align 4
  tail call void @vfree(ptr noundef %16) #12
  store ptr null, ptr @elfnotes_buf, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmcoredd_mutex, i32 noundef 0) #12
  %17 = load volatile ptr, ptr @vmcoredd_list, align 4
  %cmp.i.not3.i = icmp eq ptr %17, @vmcoredd_list
  br i1 %cmp.i.not3.i, label %while.end.vmcore_free_device_dumps.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.vmcore_free_device_dumps.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_free_device_dumps.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %18 = phi ptr [ %29, %list_del.exit.i.while.body.i_crit_edge ], [ %17, %while.end.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i4 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i4, align 4
  %buf.i = getelementptr inbounds %struct.vmcoredd_node, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i, align 4
  tail call void @vfree(ptr noundef %28) #12
  tail call void @vfree(ptr noundef %18) #12
  %29 = load volatile ptr, ptr @vmcoredd_list, align 4
  %cmp.i.not.i = icmp eq ptr %29, @vmcoredd_list
  br i1 %cmp.i.not.i, label %list_del.exit.i.vmcore_free_device_dumps.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

list_del.exit.i.vmcore_free_device_dumps.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_free_device_dumps.exit

vmcore_free_device_dumps.exit:                    ; preds = %list_del.exit.i.vmcore_free_device_dumps.exit_crit_edge, %while.end.vmcore_free_device_dumps.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crash_elf_headers() unnamed_addr #6 section ".init.text" align 64 {
entry:
  %e_ident = alloca [16 x i8], align 1
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e_ident) #12
  %0 = getelementptr inbounds [16 x i8], ptr %e_ident, i32 0, i32 4
  %1 = call ptr @memset(ptr %e_ident, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %2 = load i64, ptr @elfcorehdr_addr, align 8
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %addr, align 8
  %call = call i32 @elfcorehdr_read(ptr noundef nonnull %e_ident, i32 noundef 16, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %e_ident, ptr noundef nonnull dereferenceable(4) @.str.15, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3.not = icmp eq i32 %bcmp, 0
  br i1 %cmp3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end25 [
    i8 2, label %if.then9
    i8 1, label %if.then17
  ]

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call fastcc i32 @parse_crash_elf64_headers() #18
  br label %cleanup

if.then17:                                        ; preds = %if.end6
  %call18 = call fastcc i32 @parse_crash_elf32_headers() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end29, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end29:                                         ; preds = %if.then17
  %7 = load i32, ptr @elfcorebuf_sz, align 4
  %8 = load i32, ptr @elfnotes_sz, align 4
  %add.i = add i32 %8, %7
  %conv.i = zext i32 %add.i to i64
  %m.01.i = load ptr, ptr @vmcore_list, align 4
  %cmp.not2.i = icmp eq ptr %m.01.i, @vmcore_list
  br i1 %cmp.not2.i, label %if.end29.get_vmcore_size.exit_crit_edge, label %if.end29.for.body.i_crit_edge

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

if.end29.get_vmcore_size.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_vmcore_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %m.04.i = phi ptr [ %m.0.i, %for.body.i.for.body.i_crit_edge ], [ %m.01.i, %if.end29.for.body.i_crit_edge ]
  %size.03.i = phi i64 [ %add3.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %if.end29.for.body.i_crit_edge ]
  %size2.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i, i32 0, i32 2
  %9 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size2.i, align 8
  %add3.i = add i64 %10, %size.03.i
  %11 = ptrtoint ptr %m.04.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %m.0.i = load ptr, ptr %m.04.i, align 4
  %cmp.not.i = icmp eq ptr %m.0.i, @vmcore_list
  br i1 %cmp.not.i, label %for.body.i.get_vmcore_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.get_vmcore_size.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_vmcore_size.exit

get_vmcore_size.exit:                             ; preds = %for.body.i.get_vmcore_size.exit_crit_edge, %if.end29.get_vmcore_size.exit_crit_edge
  %size.0.lcssa.i = phi i64 [ %conv.i, %if.end29.get_vmcore_size.exit_crit_edge ], [ %add3.i, %for.body.i.get_vmcore_size.exit_crit_edge ]
  store i64 %size.0.lcssa.i, ptr @vmcore_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_vmcore_size.exit, %do.end25, %if.then17.cleanup_crit_edge, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call10, %if.then9 ], [ 0, %get_vmcore_size.exit ], [ -22, %do.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e_ident) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crash_elf64_headers() unnamed_addr #6 section ".init.text" align 64 {
entry:
  %ehdr = alloca %struct.elf64_hdr, align 8
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ehdr) #12
  %0 = call ptr @memset(ptr %ehdr, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %1 = load i64, ptr @elfcorehdr_addr, align 8
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %addr, align 8
  %call = call i32 @elfcorehdr_read(ptr noundef nonnull %ehdr, i32 noundef 64, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ehdr) #12
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crash_elf32_headers() unnamed_addr #6 section ".init.text" align 64 {
entry:
  %ehdr = alloca %struct.elf32_hdr, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ehdr) #12
  %0 = call ptr @memset(ptr %ehdr, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #12
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %1 = load i64, ptr @elfcorehdr_addr, align 8
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %addr, align 8
  %call = call i32 @elfcorehdr_read(ptr noundef nonnull %ehdr, i32 noundef 52, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ehdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %lhsv = load i32, ptr %ehdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2135247942, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 2135247942
  br i1 %.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %e_type = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 1
  %4 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp3.not = icmp eq i16 %5, 4
  br i1 %cmp3.not, label %lor.lhs.false5, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @elf_check_arch(ptr noundef nonnull %ehdr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false5.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %arrayidx = getelementptr inbounds [16 x i8], ptr %ehdr, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp10.not = icmp eq i8 %7, 1
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false7.do.end_crit_edge

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arrayidx14 = getelementptr inbounds [16 x i8], ptr %ehdr, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp16.not = icmp eq i8 %9, 1
  br i1 %cmp16.not, label %lor.lhs.false18, label %lor.lhs.false12.do.end_crit_edge

lor.lhs.false12.do.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %e_version = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 3
  %10 = ptrtoint ptr %e_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %e_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp19.not = icmp eq i32 %11, 1
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false18.do.end_crit_edge

lor.lhs.false18.do.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %e_ehsize = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 8
  %12 = ptrtoint ptr %e_ehsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %e_ehsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %13)
  %cmp23.not = icmp eq i16 %13, 52
  br i1 %cmp23.not, label %lor.lhs.false25, label %lor.lhs.false21.do.end_crit_edge

lor.lhs.false21.do.end_crit_edge:                 ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %e_phentsize = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 9
  %14 = ptrtoint ptr %e_phentsize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %e_phentsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %15)
  %cmp27.not = icmp eq i16 %15, 32
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false25.do.end_crit_edge

lor.lhs.false25.do.end_crit_edge:                 ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 10
  %16 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp31 = icmp eq i16 %17, 0
  br i1 %cmp31, label %lor.lhs.false29.do.end_crit_edge, label %if.end35

lor.lhs.false29.do.end_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false29.do.end_crit_edge, %lor.lhs.false25.do.end_crit_edge, %lor.lhs.false21.do.end_crit_edge, %lor.lhs.false18.do.end_crit_edge, %lor.lhs.false12.do.end_crit_edge, %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false29
  %conv30 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv30, 5
  %add = add nuw nsw i32 %mul, 52
  store i32 %add, ptr @elfcorebuf_sz_orig, align 4
  store i32 %add, ptr @elfcorebuf_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %17)
  %tobool.not.i.i = icmp ult i16 %17, 127
  %dec.i = add nuw nsw i32 %mul, 51
  %shr.i = lshr i32 %dec.i, 12
  %18 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #12, !range !138
  %sub.i.i = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call39 = call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %cond.i.i) #12
  %19 = inttoptr i32 %call39 to ptr
  store ptr %19, ptr @elfcorebuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end35.cleanup_crit_edge, label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %20 = load i64, ptr @elfcorehdr_addr, align 8
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %addr, align 8
  %22 = load i32, ptr @elfcorebuf_sz_orig, align 4
  %call43 = call i32 @elfcorehdr_read(ptr noundef nonnull %19, i32 noundef %22, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.fail_crit_edge, label %if.end47

if.end42.fail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end47:                                         ; preds = %if.end42
  %23 = load ptr, ptr @elfcorebuf, align 4
  %call48 = call fastcc i32 @merge_note_headers_elf32(ptr noundef %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.fail_crit_edge

if.end47.fail_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end51:                                         ; preds = %if.end47
  %24 = load ptr, ptr @elfcorebuf, align 4
  %25 = load i32, ptr @elfcorebuf_sz, align 4
  %26 = load i32, ptr @elfnotes_sz, align 4
  %call52 = call fastcc i32 @process_ptload_program_headers_elf32(ptr noundef %24, i32 noundef %25, i32 noundef %26) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.fail_crit_edge

if.end51.fail_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end55:                                         ; preds = %if.end51
  %m.01.i = load ptr, ptr @vmcore_list, align 4
  %cmp.not2.i = icmp eq ptr %m.01.i, @vmcore_list
  br i1 %cmp.not2.i, label %if.end55.cleanup_crit_edge, label %for.body.preheader.i

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end55
  %27 = load i32, ptr @elfnotes_sz, align 4
  %28 = load i32, ptr @elfcorebuf_sz, align 4
  %add.i63 = add i32 %28, %27
  %conv.i = zext i32 %add.i63 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %m.04.i = phi ptr [ %m.0.i, %for.body.i.for.body.i_crit_edge ], [ %m.01.i, %for.body.preheader.i ]
  %vmcore_off.03.i = phi i64 [ %add2.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %offset.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i, i32 0, i32 3
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %vmcore_off.03.i, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.vmcore, ptr %m.04.i, i32 0, i32 2
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size.i, align 8
  %add2.i = add i64 %31, %vmcore_off.03.i
  %32 = ptrtoint ptr %m.04.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %m.0.i = load ptr, ptr %m.04.i, align 4
  %cmp.not.i = icmp eq ptr %m.0.i, @vmcore_list
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail:                                             ; preds = %if.end51.fail_crit_edge, %if.end47.fail_crit_edge, %if.end42.fail_crit_edge
  %rc.0 = phi i32 [ %call43, %if.end42.fail_crit_edge ], [ %call48, %if.end47.fail_crit_edge ], [ %call52, %if.end51.fail_crit_edge ]
  %33 = load ptr, ptr @elfcorebuf, align 4
  %34 = load i32, ptr @elfcorebuf_sz_orig, align 4
  %dec.i.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %35 = call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !138
  %sub.i.i.i = sub nuw nsw i32 32, %35
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %36 = ptrtoint ptr %33 to i32
  call void @free_pages(i32 noundef %36, i32 noundef %cond.i.i.i) #12
  store ptr null, ptr @elfcorebuf, align 4
  %37 = load ptr, ptr @elfnotes_buf, align 4
  call void @vfree(ptr noundef %37) #12
  store ptr null, ptr @elfnotes_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.body.i.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %fail ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ehdr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elf_check_arch(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @merge_note_headers_elf32(ptr nocapture noundef %elfptr) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @update_note_header_size_elf32(ptr noundef %elfptr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %elfptr, i32 0, i32 10
  %0 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2.not6.i = icmp eq i16 %1, 0
  br i1 %cmp2.not6.i, label %if.end.get_note_number_and_size_elf32.exit_crit_edge, label %for.body.preheader.i

if.end.get_note_number_and_size_elf32.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_note_number_and_size_elf32.exit

for.body.preheader.i:                             ; preds = %if.end
  %add.ptr.i = getelementptr %struct.elf32_hdr, ptr %elfptr, i32 1
  %conv.i = zext i16 %1 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %nr_ptnote.0 = phi i32 [ 0, %for.body.preheader.i ], [ %nr_ptnote.1, %for.inc.i.for.body.i_crit_edge ]
  %phdr_sz.0 = phi i64 [ 0, %for.body.preheader.i ], [ %phdr_sz.1, %for.inc.i.for.body.i_crit_edge ]
  %phdr_ptr.04.i = phi ptr [ %add.ptr.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %phdr_ptr.04.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phdr_ptr.04.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.not.i = icmp eq i32 %3, 4
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %nr_ptnote.0, 1
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.04.i, i32 0, i32 5
  %4 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_memsz.i, align 4
  %conv4.i = zext i32 %5 to i64
  %add5.i = add i64 %phdr_sz.0, %conv4.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %nr_ptnote.1 = phi i32 [ %add.i, %if.end.i ], [ %nr_ptnote.0, %for.body.i.for.inc.i_crit_edge ]
  %phdr_sz.1 = phi i64 [ %add5.i, %if.end.i ], [ %phdr_sz.0, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.elf32_phdr, ptr %phdr_ptr.04.i, i32 1
  %exitcond.not = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not, label %get_note_number_and_size_elf32.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

get_note_number_and_size_elf32.exit.loopexit:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t.le = trunc i64 %phdr_sz.1 to i32
  br label %get_note_number_and_size_elf32.exit

get_note_number_and_size_elf32.exit:              ; preds = %get_note_number_and_size_elf32.exit.loopexit, %if.end.get_note_number_and_size_elf32.exit_crit_edge
  %nr_ptnote.2 = phi i32 [ 0, %if.end.get_note_number_and_size_elf32.exit_crit_edge ], [ %nr_ptnote.1, %get_note_number_and_size_elf32.exit.loopexit ]
  %phdr_sz.2.off0 = phi i32 [ 0, %if.end.get_note_number_and_size_elf32.exit_crit_edge ], [ %extract.t.le, %get_note_number_and_size_elf32.exit.loopexit ]
  %6 = add i32 %phdr_sz.2.off0, 4095
  %conv8 = and i32 %6, -4096
  store i32 %conv8, ptr @elfnotes_sz, align 4
  %call.i = tail call noalias ptr @vmalloc_user(i32 noundef %conv8) #17
  store ptr %call.i, ptr @elfnotes_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %get_note_number_and_size_elf32.exit.cleanup_crit_edge, label %if.end11

get_note_number_and_size_elf32.exit.cleanup_crit_edge: ; preds = %get_note_number_and_size_elf32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %get_note_number_and_size_elf32.exit
  %call12 = tail call fastcc i32 @copy_notes_elf32(ptr noundef %elfptr, ptr noundef nonnull %call.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %e_phnum.i, align 4
  %conv17 = zext i16 %8 to i32
  %sub18 = sub i32 %conv17, %nr_ptnote.2
  %add19 = shl i32 %sub18, 5
  %add27 = add i32 %add19, 4179
  %div292 = and i32 %add27, -4096
  %add.ptr = getelementptr i8, ptr %elfptr, i32 52
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 4, ptr %add.ptr, align 1
  %phdr.sroa.5.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 56
  %10 = ptrtoint ptr %phdr.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %div292, ptr %phdr.sroa.5.0..sroa_idx, align 1
  %phdr.sroa.7.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 60
  %11 = ptrtoint ptr %phdr.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %phdr.sroa.7.0..sroa_idx, align 1
  %phdr.sroa.9.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 64
  %12 = ptrtoint ptr %phdr.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %phdr.sroa.9.0..sroa_idx, align 1
  %phdr.sroa.11.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 68
  %13 = ptrtoint ptr %phdr.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %phdr_sz.2.off0, ptr %phdr.sroa.11.0..sroa_idx, align 1
  %phdr.sroa.13.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 72
  %14 = ptrtoint ptr %phdr.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %phdr_sz.2.off0, ptr %phdr.sroa.13.0..sroa_idx, align 1
  %phdr.sroa.16.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 76
  %15 = ptrtoint ptr %phdr.sroa.16.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %phdr.sroa.16.0..sroa_idx, align 1
  %phdr.sroa.18.0..sroa_idx = getelementptr i8, ptr %elfptr, i32 80
  %16 = ptrtoint ptr %phdr.sroa.18.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %phdr.sroa.18.0..sroa_idx, align 1
  %add.ptr34 = getelementptr i8, ptr %elfptr, i32 84
  %sub35 = shl i32 %nr_ptnote.2, 5
  %mul36 = add i32 %sub35, -32
  %17 = load i32, ptr @elfcorebuf_sz, align 4
  %sub37 = sub i32 %17, %mul36
  %add.ptr38 = getelementptr i8, ptr %add.ptr34, i32 %mul36
  %sub40 = add i32 %sub37, -84
  %18 = call ptr @memmove(ptr %add.ptr34, ptr %add.ptr38, i32 %sub40)
  %add.ptr41 = getelementptr i8, ptr %elfptr, i32 %sub37
  %19 = call ptr @memset(ptr %add.ptr41, i32 0, i32 %mul36)
  %add45 = add i32 %sub37, 4095
  %div463 = and i32 %add45, -4096
  store i32 %div463, ptr @elfcorebuf_sz, align 4
  %20 = load i16, ptr %e_phnum.i, align 4
  %21 = trunc i32 %nr_ptnote.2 to i16
  %22 = sub i16 1, %21
  %conv52 = add i16 %22, %20
  store i16 %conv52, ptr %e_phnum.i, align 4
  store i32 %phdr_sz.2.off0, ptr @elfnotes_orig_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %get_note_number_and_size_elf32.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %get_note_number_and_size_elf32.exit.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_ptload_program_headers_elf32(ptr nocapture noundef %elfptr, i32 noundef %elfsz, i32 noundef %elfnotes_sz) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %elfptr, i32 0, i32 10
  %0 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6.not = icmp eq i16 %1, 0
  br i1 %cmp6.not, label %entry.cleanup27_crit_edge, label %for.body.preheader

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

for.body.preheader:                               ; preds = %entry
  %add = add i32 %elfnotes_sz, %elfsz
  %conv = zext i32 %add to i64
  %add.ptr = getelementptr i8, ptr %elfptr, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %phdr_ptr.08 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %vmcore_off.07 = phi i64 [ %vmcore_off.1.ph, %for.inc.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %2 = ptrtoint ptr %phdr_ptr.08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phdr_ptr.08, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3.not = icmp eq i32 %3, 1
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.08, i32 0, i32 1
  %4 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_offset, align 4
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.08, i32 0, i32 5
  %6 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_memsz, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #20
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup27_crit_edge, label %if.end16

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end16:                                         ; preds = %if.end
  %conv5 = zext i32 %5 to i64
  %conv7 = zext i32 %7 to i64
  %add8 = add nuw nsw i64 %conv5, 4095
  %add11 = add nuw nsw i64 %add8, %conv7
  %div1 = and i64 %add11, 17179865088
  %sub = and i64 %conv5, 4294963200
  %sub14 = sub nsw i64 %div1, %sub
  %rem = and i64 %conv5, 4095
  %paddr17 = getelementptr inbounds %struct.vmcore, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %paddr17 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sub, ptr %paddr17, align 8
  %size18 = getelementptr inbounds %struct.vmcore, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %size18 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %sub14, ptr %size18, align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vmcore_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %11, ptr noundef nonnull @vmcore_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @vmcore_list, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vmcore_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %add20 = add i64 %rem, %vmcore_off.07
  %conv21 = trunc i64 %add20 to i32
  %15 = ptrtoint ptr %p_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv21, ptr %p_offset, align 4
  %add23 = add i64 %sub14, %vmcore_off.07
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %for.body.for.inc_crit_edge
  %vmcore_off.1.ph = phi i64 [ %vmcore_off.07, %for.body.for.inc_crit_edge ], [ %add23, %list_add_tail.exit ]
  %inc = add nuw nsw i32 %i.010, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr_ptr.08, i32 1
  %16 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %e_phnum, align 4
  %conv1 = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup27_crit_edge

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup27:                                        ; preds = %for.inc.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup27_crit_edge ], [ -12, %if.end.cleanup27_crit_edge ], [ 0, %for.inc.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_note_header_size_elf32(ptr nocapture noundef %ehdr_ptr) unnamed_addr #6 section ".init.text" align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr_ptr, i32 0, i32 10
  %0 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp90.not = icmp eq i16 %1, 0
  br i1 %cmp90.not, label %entry.cleanup49_crit_edge, label %for.body.preheader

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %ehdr_ptr, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.093 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %phdr_ptr.091 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #12
  %2 = ptrtoint ptr %phdr_ptr.091 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phdr_ptr.091, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.not = icmp eq i32 %3, 4
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.091, i32 0, i32 5
  %4 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_memsz, align 4
  %conv4 = zext i32 %5 to i64
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.091, i32 0, i32 1
  %6 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_offset, align 4
  %conv5 = zext i32 %7 to i64
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv5, ptr %offset, align 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @elfcorehdr_read_notes(ptr noundef nonnull %call9.i, i32 noundef %5, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end8
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not86 = icmp eq i32 %10, 0
  br i1 %cmp15.not86, label %while.end.thread, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.end.thread:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i) #12
  %11 = ptrtoint ptr %p_memsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %p_memsz, align 4
  br label %do.end41

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %12 = phi i32 [ %16, %if.end31.while.body_crit_edge ], [ %10, %while.cond.preheader.while.body_crit_edge ]
  %real_sz.088 = phi i64 [ %add24, %if.end31.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %nhdr_ptr.087 = phi ptr [ %add.ptr33, %if.end31.while.body_crit_edge ], [ %call9.i, %while.cond.preheader.while.body_crit_edge ]
  %conv18 = zext i32 %12 to i64
  %add = add nuw nsw i64 %conv18, 3
  %and = and i64 %add, 8589934588
  %add19 = add nuw nsw i64 %and, 12
  %n_descsz = getelementptr inbounds %struct.elf32_note, ptr %nhdr_ptr.087, i32 0, i32 1
  %13 = ptrtoint ptr %n_descsz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_descsz, align 4
  %conv20 = zext i32 %14 to i64
  %add21 = add nuw nsw i64 %conv20, 3
  %and22 = and i64 %add21, 8589934588
  %add23 = add nuw nsw i64 %add19, %and22
  %add24 = add i64 %add23, %real_sz.088
  call void @__sanitizer_cov_trace_cmp8(i64 %add24, i64 %conv4)
  %cmp25 = icmp ugt i64 %add24, %conv4
  br i1 %cmp25, label %do.end, label %if.end31

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %14) #15
  br label %while.end

if.end31:                                         ; preds = %while.body
  %idx.ext = trunc i64 %add23 to i32
  %add.ptr33 = getelementptr i8, ptr %nhdr_ptr.087, i32 %idx.ext
  %15 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr33, align 4
  %cmp15.not = icmp eq i32 %16, 0
  br i1 %cmp15.not, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %do.end
  %real_sz.084 = phi i64 [ %real_sz.088, %do.end ], [ %add24, %if.end31.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  %conv34 = trunc i64 %real_sz.084 to i32
  %17 = ptrtoint ptr %p_memsz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv34, ptr %p_memsz, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %real_sz.084)
  %cmp36 = icmp eq i64 %real_sz.084, 0
  br i1 %cmp36, label %while.end.do.end41_crit_edge, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

while.end.do.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

do.end41:                                         ; preds = %while.end.do.end41_crit_edge, %while.end.thread
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %for.inc

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge
  %retval.1 = phi i32 [ %call10, %if.then13 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #12
  br label %cleanup49

for.inc:                                          ; preds = %do.end41, %while.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #12
  %inc = add nuw nsw i32 %i.093, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr_ptr.091, i32 1
  %18 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup49_crit_edge

for.inc.cleanup49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup49:                                        ; preds = %for.inc.cleanup49_crit_edge, %cleanup, %entry.cleanup49_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 0, %entry.cleanup49_crit_edge ], [ 0, %for.inc.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_notes_elf32(ptr nocapture noundef readonly %ehdr_ptr, ptr noundef %notes_buf) unnamed_addr #6 section ".init.text" align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr_ptr, i32 0, i32 10
  %0 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp28.not = icmp eq i16 %1, 0
  br i1 %cmp28.not, label %entry.cleanup11_crit_edge, label %for.body.preheader

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %ehdr_ptr, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %phdr_ptr.031 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %notes_buf.addr.029 = phi ptr [ %notes_buf.addr.1.ph, %for.inc.for.body_crit_edge ], [ %notes_buf, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #12
  %2 = ptrtoint ptr %phdr_ptr.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phdr_ptr.031, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.not = icmp eq i32 %3, 4
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.031, i32 0, i32 1
  %4 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_offset, align 4
  %conv4 = zext i32 %5 to i64
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv4, ptr %offset, align 8
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr_ptr.031, i32 0, i32 5
  %7 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_memsz, align 4
  %call = call i32 @elfcorehdr_read_notes(ptr noundef %notes_buf.addr.029, i32 noundef %8, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_memsz, align 4
  %add.ptr10 = getelementptr i8, ptr %notes_buf.addr.029, i32 %10
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #12
  br label %cleanup11

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %notes_buf.addr.1.ph = phi ptr [ %notes_buf.addr.029, %for.body.for.inc_crit_edge ], [ %add.ptr10, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #12
  %inc = add nuw nsw i32 %i.030, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr_ptr.031, i32 1
  %11 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup11_crit_edge

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %cleanup, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %for.inc.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_vmcore(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  store i1 true, ptr @vmcore_opened, align 1
  tail call void @up_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_vmcore(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %buflen, ptr nocapture noundef %fpos) #0 align 64 {
entry:
  %start.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i = icmp eq i32 %buflen, 0
  br i1 %cmp.i, label %entry.__read_vmcore.exit_crit_edge, label %lor.lhs.false.i

entry.__read_vmcore.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fpos, align 8
  %2 = load i64, ptr @vmcore_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %1)
  %cmp1.not.i = icmp ugt i64 %2, %1
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.__read_vmcore.exit_crit_edge

lor.lhs.false.i.__read_vmcore.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i = zext i32 %buflen to i64
  %sub.i = sub i64 %2, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv.i)
  %cmp2.i = icmp ult i64 %sub.i, %conv.i
  %conv6.i = trunc i64 %sub.i to i32
  %spec.select.i = select i1 %cmp2.i, i32 %conv6.i, i32 %buflen
  %3 = load i32, ptr @elfcorebuf_sz, align 4
  %conv8.i = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv8.i)
  %cmp9.i = icmp slt i64 %1, %conv8.i
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.if.end27.i_crit_edge

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then11.i:                                      ; preds = %if.end.i
  %conv12.i = trunc i64 %1 to i32
  %sub13.i = sub i32 %3, %conv12.i
  %4 = tail call i32 @llvm.umin.i32(i32 %sub13.i, i32 %spec.select.i) #12
  %5 = load ptr, ptr @elfcorebuf, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv12.i
  %call.i = tail call fastcc i32 @copy_to(ptr noundef %buffer, ptr noundef %add.ptr.i, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %if.then11.i.__read_vmcore.exit_crit_edge

if.then11.i.__read_vmcore.exit_crit_edge:         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end18.i:                                       ; preds = %if.then11.i
  %sub19.i = sub i32 %spec.select.i, %4
  %conv20.i = zext i32 %4 to i64
  %6 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fpos, align 8
  %add.i = add i64 %7, %conv20.i
  store i64 %add.i, ptr %fpos, align 8
  %add.ptr21.i = getelementptr i8, ptr %buffer, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp23.i = icmp eq i32 %sub19.i, 0
  br i1 %cmp23.i, label %if.end18.i.__read_vmcore.exit_crit_edge, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.end18.i.__read_vmcore.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end27.i:                                       ; preds = %if.end18.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %acc.0.i = phi i32 [ %4, %if.end18.i.if.end27.i_crit_edge ], [ 0, %if.end.i.if.end27.i_crit_edge ]
  %buflen.addr.1.i = phi i32 [ %sub19.i, %if.end18.i.if.end27.i_crit_edge ], [ %spec.select.i, %if.end.i.if.end27.i_crit_edge ]
  %buffer.addr.0.i = phi ptr [ %add.ptr21.i, %if.end18.i.if.end27.i_crit_edge ], [ %buffer, %if.end.i.if.end27.i_crit_edge ]
  %8 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fpos, align 8
  %10 = load i32, ptr @elfcorebuf_sz, align 4
  %11 = load i32, ptr @elfnotes_sz, align 4
  %add28.i = add i32 %11, %10
  %conv29.i = zext i32 %add28.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv29.i)
  %cmp30.i = icmp slt i64 %9, %conv29.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end27.i.if.end91.i_crit_edge

if.end27.i.if.end91.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

if.then32.i:                                      ; preds = %if.end27.i
  %12 = load i32, ptr @vmcoredd_orig_sz, align 4
  %add33.i = add i32 %12, %10
  %conv34.i = zext i32 %add33.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv34.i)
  %cmp35.i = icmp slt i64 %9, %conv34.i
  br i1 %cmp35.i, label %if.then37.i, label %if.then32.i.if.end62.i_crit_edge

if.then32.i.if.end62.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then37.i:                                      ; preds = %if.then32.i
  %conv39.i = trunc i64 %9 to i32
  %sub40.i = sub i32 %add33.i, %conv39.i
  %13 = tail call i32 @llvm.umin.i32(i32 %sub40.i, i32 %buflen.addr.1.i) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmcoredd_mutex, i32 noundef 0) #12
  %dump.02.i.i = load ptr, ptr @vmcoredd_list, align 4
  %cmp.not3.i.i = icmp eq ptr %dump.02.i.i, @vmcoredd_list
  br i1 %cmp.not3.i.i, label %if.then37.i.if.end53.i_crit_edge, label %for.body.i.i.preheader

if.then37.i.if.end53.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

for.body.i.i.preheader:                           ; preds = %if.then37.i
  %conv48.i = zext i32 %10 to i64
  %sub49.i = sub i64 %9, %conv48.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end24.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %dump.08.i.i = phi ptr [ %dump.0.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %dump.02.i.i, %for.body.i.i.preheader ]
  %dst.addr.07.i.i = phi ptr [ %dst.addr.1.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %buffer.addr.0.i, %for.body.i.i.preheader ]
  %start.addr.06.i.i = phi i64 [ %start.addr.1.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %sub49.i, %for.body.i.i.preheader ]
  %size.addr.05.i.i = phi i32 [ %size.addr.1.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %13, %for.body.i.i.preheader ]
  %offset.04.i.i = phi i64 [ %add27.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %size1.i.i = getelementptr inbounds %struct.vmcoredd_node, ptr %dump.08.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size1.i.i, align 4
  %conv.i.i = zext i32 %15 to i64
  %add.i.i = add i64 %offset.04.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %start.addr.06.i.i)
  %cmp2.i.i = icmp ugt i64 %add.i.i, %start.addr.06.i.i
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.body.i.i.if.end24.i.i_crit_edge

for.body.i.i.if.end24.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = sub i64 %add.i.i, %start.addr.06.i.i
  %conv7.i.i = zext i32 %size.addr.05.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv7.i.i)
  %cmp9.i.i = icmp ult i64 %sub.i.i, %conv7.i.i
  %extract.t.i.i = trunc i64 %sub.i.i to i32
  %cond.off0.i.i = select i1 %cmp9.i.i, i32 %extract.t.i.i, i32 %size.addr.05.i.i
  %buf12.i.i = getelementptr inbounds %struct.vmcoredd_node, ptr %dump.08.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf12.i.i, align 4
  %idx.ext.i.i = trunc i64 %start.addr.06.i.i to i32
  %add.ptr13.i.i = getelementptr i8, ptr %17, i32 %idx.ext.i.i
  %idx.ext14.i.i = trunc i64 %offset.04.i.i to i32
  %idx.neg.i.i = sub i32 0, %idx.ext14.i.i
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr13.i.i, i32 %idx.neg.i.i
  %call.i.i = tail call fastcc i32 @copy_to(ptr noundef %dst.addr.07.i.i, ptr noundef %add.ptr15.i.i, i32 noundef %cond.off0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %vmcoredd_copy_dumps.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %sub17.i.i = sub i32 %size.addr.05.i.i, %cond.off0.i.i
  %conv18.i.i = zext i32 %cond.off0.i.i to i64
  %add19.i.i = add i64 %start.addr.06.i.i, %conv18.i.i
  %add.ptr20.i.i = getelementptr i8, ptr %dst.addr.07.i.i, i32 %cond.off0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i.i)
  %tobool21.not.i.i = icmp eq i32 %sub17.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end.i.i.if.end53.i_crit_edge, label %if.end.i.i.if.end24.i.i_crit_edge

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.end.i.i.if.end53.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.end24.i.i:                                     ; preds = %if.end.i.i.if.end24.i.i_crit_edge, %for.body.i.i.if.end24.i.i_crit_edge
  %size.addr.1.i.i = phi i32 [ %sub17.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %size.addr.05.i.i, %for.body.i.i.if.end24.i.i_crit_edge ]
  %start.addr.1.i.i = phi i64 [ %add19.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %start.addr.06.i.i, %for.body.i.i.if.end24.i.i_crit_edge ]
  %dst.addr.1.i.i = phi ptr [ %add.ptr20.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %dst.addr.07.i.i, %for.body.i.i.if.end24.i.i_crit_edge ]
  %18 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size1.i.i, align 4
  %conv26.i.i = zext i32 %19 to i64
  %add27.i.i = add i64 %offset.04.i.i, %conv26.i.i
  %20 = ptrtoint ptr %dump.08.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %dump.0.i.i = load ptr, ptr %dump.08.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dump.0.i.i, @vmcoredd_list
  br i1 %cmp.not.i.i, label %if.end24.i.i.if.end53.i_crit_edge, label %if.end24.i.i.for.body.i.i_crit_edge

if.end24.i.i.for.body.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end24.i.i.if.end53.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

vmcoredd_copy_dumps.exit.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  br label %__read_vmcore.exit

if.end53.i:                                       ; preds = %if.end24.i.i.if.end53.i_crit_edge, %if.end.i.i.if.end53.i_crit_edge, %if.then37.i.if.end53.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  %sub54.i = sub i32 %buflen.addr.1.i, %13
  %conv55.i = zext i32 %13 to i64
  %21 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fpos, align 8
  %add56.i = add i64 %22, %conv55.i
  store i64 %add56.i, ptr %fpos, align 8
  %add.ptr57.i = getelementptr i8, ptr %buffer.addr.0.i, i32 %13
  %add58.i = add i32 %13, %acc.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub54.i)
  %tobool59.not.i = icmp eq i32 %sub54.i, 0
  br i1 %tobool59.not.i, label %if.end53.i.__read_vmcore.exit_crit_edge, label %if.end53.i.if.end62.i_crit_edge

if.end53.i.if.end62.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.end53.i.__read_vmcore.exit_crit_edge:          ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end62.i:                                       ; preds = %if.end53.i.if.end62.i_crit_edge, %if.then32.i.if.end62.i_crit_edge
  %acc.1.i = phi i32 [ %add58.i, %if.end53.i.if.end62.i_crit_edge ], [ %acc.0.i, %if.then32.i.if.end62.i_crit_edge ]
  %buflen.addr.2.i = phi i32 [ %sub54.i, %if.end53.i.if.end62.i_crit_edge ], [ %buflen.addr.1.i, %if.then32.i.if.end62.i_crit_edge ]
  %buffer.addr.1.i = phi ptr [ %add.ptr57.i, %if.end53.i.if.end62.i_crit_edge ], [ %buffer.addr.0.i, %if.then32.i.if.end62.i_crit_edge ]
  %23 = load i32, ptr @elfcorebuf_sz, align 4
  %24 = load i32, ptr @elfnotes_sz, align 4
  %add63.i = add i32 %24, %23
  %25 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fpos, align 8
  %conv64.i = trunc i64 %26 to i32
  %sub65.i = sub i32 %add63.i, %conv64.i
  %27 = tail call i32 @llvm.umin.i32(i32 %sub65.i, i32 %buflen.addr.2.i) #12
  %28 = load ptr, ptr @elfnotes_buf, align 4
  %add.ptr74.i = getelementptr i8, ptr %28, i32 %conv64.i
  %idx.neg.i = sub i32 0, %23
  %add.ptr75.i = getelementptr i8, ptr %add.ptr74.i, i32 %idx.neg.i
  %29 = load i32, ptr @vmcoredd_orig_sz, align 4
  %idx.neg76.i = sub i32 0, %29
  %add.ptr77.i = getelementptr i8, ptr %add.ptr75.i, i32 %idx.neg76.i
  %call78.i = tail call fastcc i32 @copy_to(ptr noundef %buffer.addr.1.i, ptr noundef %add.ptr77.i, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %cleanup.i, label %if.end62.i.__read_vmcore.exit_crit_edge

if.end62.i.__read_vmcore.exit_crit_edge:          ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

cleanup.i:                                        ; preds = %if.end62.i
  %sub82.i = sub i32 %buflen.addr.2.i, %27
  %conv83.i = zext i32 %27 to i64
  %30 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fpos, align 8
  %add84.i = add i64 %31, %conv83.i
  store i64 %add84.i, ptr %fpos, align 8
  %add.ptr85.i = getelementptr i8, ptr %buffer.addr.1.i, i32 %27
  %add86.i = add i32 %27, %acc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub82.i)
  %cmp87.i = icmp eq i32 %sub82.i, 0
  br i1 %cmp87.i, label %cleanup.i.__read_vmcore.exit_crit_edge, label %cleanup.i.if.end91.i_crit_edge

cleanup.i.if.end91.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

cleanup.i.__read_vmcore.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end91.i:                                       ; preds = %cleanup.i.if.end91.i_crit_edge, %if.end27.i.if.end91.i_crit_edge
  %acc.3.i = phi i32 [ %add86.i, %cleanup.i.if.end91.i_crit_edge ], [ %acc.0.i, %if.end27.i.if.end91.i_crit_edge ]
  %buflen.addr.4.i = phi i32 [ %sub82.i, %cleanup.i.if.end91.i_crit_edge ], [ %buflen.addr.1.i, %if.end27.i.if.end91.i_crit_edge ]
  %buffer.addr.3.i = phi ptr [ %add.ptr85.i, %cleanup.i.if.end91.i_crit_edge ], [ %buffer.addr.0.i, %if.end27.i.if.end91.i_crit_edge ]
  %m.09.i = load ptr, ptr @vmcore_list, align 4
  %cmp94.not10.i = icmp eq ptr %m.09.i, @vmcore_list
  br i1 %cmp94.not10.i, label %if.end91.i.__read_vmcore.exit_crit_edge, label %if.end91.i.for.body.i_crit_edge

if.end91.i.for.body.i_crit_edge:                  ; preds = %if.end91.i
  br label %for.body.i

if.end91.i.__read_vmcore.exit_crit_edge:          ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end91.i.for.body.i_crit_edge
  %m.014.i = phi ptr [ %m.0.i, %for.inc.i.for.body.i_crit_edge ], [ %m.09.i, %if.end91.i.for.body.i_crit_edge ]
  %buffer.addr.413.i = phi ptr [ %buffer.addr.5.i, %for.inc.i.for.body.i_crit_edge ], [ %buffer.addr.3.i, %if.end91.i.for.body.i_crit_edge ]
  %buflen.addr.512.i = phi i32 [ %buflen.addr.6.i, %for.inc.i.for.body.i_crit_edge ], [ %buflen.addr.4.i, %if.end91.i.for.body.i_crit_edge ]
  %acc.411.i = phi i32 [ %acc.5.i, %for.inc.i.for.body.i_crit_edge ], [ %acc.3.i, %if.end91.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fpos, align 8
  %offset.i = getelementptr inbounds %struct.vmcore, ptr %m.014.i, i32 0, i32 3
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.vmcore, ptr %m.014.i, i32 0, i32 2
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size.i, align 8
  %add96.i = add i64 %37, %35
  call void @__sanitizer_cov_trace_cmp8(i64 %add96.i, i64 %33)
  %cmp97.i = icmp ugt i64 %add96.i, %33
  br i1 %cmp97.i, label %if.then99.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then99.i:                                      ; preds = %for.body.i
  %sub103.i = sub i64 %add96.i, %33
  %conv104.i = zext i32 %buflen.addr.512.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub103.i, i64 %conv104.i)
  %cmp106.i = icmp ult i64 %sub103.i, %conv104.i
  %extract.t.i = trunc i64 %sub103.i to i32
  %cond111.off0.i = select i1 %cmp106.i, i32 %extract.t.i, i32 %buflen.addr.512.i
  %paddr.i = getelementptr inbounds %struct.vmcore, ptr %m.014.i, i32 0, i32 1
  %38 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %paddr.i, align 8
  %add113.i = sub i64 %33, %35
  %sub115.i = add i64 %add113.i, %39
  %40 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub115.i, ptr %start.i, align 8
  %call117.i = call i32 @read_from_oldmem(ptr noundef %buffer.addr.413.i, i32 noundef %cond111.off0.i, ptr noundef nonnull %start.i, i32 noundef 1, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %cmp118.i = icmp slt i32 %call117.i, 0
  br i1 %cmp118.i, label %if.then99.i.__read_vmcore.exit_crit_edge, label %if.end121.i

if.then99.i.__read_vmcore.exit_crit_edge:         ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

if.end121.i:                                      ; preds = %if.then99.i
  %sub122.i = sub i32 %buflen.addr.512.i, %cond111.off0.i
  %conv123.i = zext i32 %cond111.off0.i to i64
  %41 = ptrtoint ptr %fpos to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fpos, align 8
  %add124.i = add i64 %42, %conv123.i
  store i64 %add124.i, ptr %fpos, align 8
  %add.ptr125.i = getelementptr i8, ptr %buffer.addr.413.i, i32 %cond111.off0.i
  %add126.i = add i32 %cond111.off0.i, %acc.411.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub122.i)
  %cmp127.i = icmp eq i32 %sub122.i, 0
  br i1 %cmp127.i, label %if.end121.i.__read_vmcore.exit_crit_edge, label %if.end121.i.for.inc.i_crit_edge

if.end121.i.for.inc.i_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end121.i.__read_vmcore.exit_crit_edge:         ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

for.inc.i:                                        ; preds = %if.end121.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %acc.5.i = phi i32 [ %add126.i, %if.end121.i.for.inc.i_crit_edge ], [ %acc.411.i, %for.body.i.for.inc.i_crit_edge ]
  %buflen.addr.6.i = phi i32 [ %sub122.i, %if.end121.i.for.inc.i_crit_edge ], [ %buflen.addr.512.i, %for.body.i.for.inc.i_crit_edge ]
  %buffer.addr.5.i = phi ptr [ %add.ptr125.i, %if.end121.i.for.inc.i_crit_edge ], [ %buffer.addr.413.i, %for.body.i.for.inc.i_crit_edge ]
  %43 = ptrtoint ptr %m.014.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %m.0.i = load ptr, ptr %m.014.i, align 4
  %cmp94.not.i = icmp eq ptr %m.0.i, @vmcore_list
  br i1 %cmp94.not.i, label %for.inc.i.__read_vmcore.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.__read_vmcore.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__read_vmcore.exit

__read_vmcore.exit:                               ; preds = %for.inc.i.__read_vmcore.exit_crit_edge, %if.end121.i.__read_vmcore.exit_crit_edge, %if.then99.i.__read_vmcore.exit_crit_edge, %if.end91.i.__read_vmcore.exit_crit_edge, %cleanup.i.__read_vmcore.exit_crit_edge, %if.end62.i.__read_vmcore.exit_crit_edge, %if.end53.i.__read_vmcore.exit_crit_edge, %vmcoredd_copy_dumps.exit.i, %if.end18.i.__read_vmcore.exit_crit_edge, %if.then11.i.__read_vmcore.exit_crit_edge, %lor.lhs.false.i.__read_vmcore.exit_crit_edge, %entry.__read_vmcore.exit_crit_edge
  %retval.1.i = phi i32 [ %add86.i, %cleanup.i.__read_vmcore.exit_crit_edge ], [ 0, %lor.lhs.false.i.__read_vmcore.exit_crit_edge ], [ 0, %entry.__read_vmcore.exit_crit_edge ], [ -14, %if.then11.i.__read_vmcore.exit_crit_edge ], [ %4, %if.end18.i.__read_vmcore.exit_crit_edge ], [ -14, %if.end62.i.__read_vmcore.exit_crit_edge ], [ %add58.i, %if.end53.i.__read_vmcore.exit_crit_edge ], [ -14, %vmcoredd_copy_dumps.exit.i ], [ %acc.3.i, %if.end91.i.__read_vmcore.exit_crit_edge ], [ %acc.5.i, %for.inc.i.__read_vmcore.exit_crit_edge ], [ %add126.i, %if.end121.i.__read_vmcore.exit_crit_edge ], [ %call117.i, %if.then99.i.__read_vmcore.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #12
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmap_vmcore(ptr nocapture noundef readnone %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %conv1 = zext i32 %sub to i64
  %6 = load i64, ptr @vmcore_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv1)
  %cmp = icmp ult i64 %6, %conv1
  %add = add nuw nsw i64 %shl, %conv1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %6)
  %cmp4 = icmp ugt i64 %add, %6
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.cleanup179_crit_edge, label %if.end

entry.cleanup179_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %7 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_flags, align 4
  %and = and i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup179_crit_edge

if.end.cleanup179_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end7:                                          ; preds = %if.end
  %and9 = and i32 %8, -268435553
  %or = or i32 %and9, 268435456
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vmcore_mmap_ops, ptr %vm_ops, align 4
  %11 = load i32, ptr @elfcorebuf_sz, align 4
  %conv11 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv11)
  %cmp12 = icmp ult i64 %shl, %conv11
  br i1 %cmp12, label %if.then14, label %if.end7.if.end37_crit_edge

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then14:                                        ; preds = %if.end7
  %conv15 = trunc i64 %shl to i32
  %sub16 = sub i32 %11, %conv15
  %12 = tail call i32 @llvm.umin.i32(i32 %sub16, i32 %sub)
  %13 = load ptr, ptr @elfcorebuf, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %conv15
  %14 = ptrtoint ptr %add.ptr to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %14) #12
  %shr = lshr i32 %call, 12
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %17 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_page_prot, align 4
  %call24 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %16, i32 noundef %shr, i32 noundef %12, i32 noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.then14.cleanup179_crit_edge

if.then14.cleanup179_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

cleanup:                                          ; preds = %if.then14
  %conv19 = zext i32 %12 to i64
  %sub29 = sub i32 %sub, %12
  %add31 = add nuw nsw i64 %shl, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp33.not = icmp eq i32 %sub29, 0
  br i1 %cmp33.not, label %cleanup.cleanup179_crit_edge, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

cleanup.cleanup179_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.end7.if.end37_crit_edge
  %len.1 = phi i64 [ %conv19, %cleanup.if.end37_crit_edge ], [ 0, %if.end7.if.end37_crit_edge ]
  %start.1 = phi i64 [ %add31, %cleanup.if.end37_crit_edge ], [ %shl, %if.end7.if.end37_crit_edge ]
  %size.1 = phi i32 [ %sub29, %cleanup.if.end37_crit_edge ], [ %sub, %if.end7.if.end37_crit_edge ]
  %19 = load i32, ptr @elfcorebuf_sz, align 4
  %20 = load i32, ptr @elfnotes_sz, align 4
  %add38 = add i32 %20, %19
  %conv39 = zext i32 %add38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %start.1, i64 %conv39)
  %cmp40 = icmp ult i64 %start.1, %conv39
  br i1 %cmp40, label %if.then42, label %if.end37.if.end119_crit_edge

if.end37.if.end119_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then42:                                        ; preds = %if.end37
  %21 = load i32, ptr @vmcoredd_orig_sz, align 4
  %add43 = add i32 %21, %19
  %conv44 = zext i32 %add43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %start.1, i64 %conv44)
  %cmp45 = icmp ult i64 %start.1, %conv44
  br i1 %cmp45, label %if.then47, label %if.then42.if.end81_crit_edge

if.then42.if.end81_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then47:                                        ; preds = %if.then42
  %conv49 = trunc i64 %start.1 to i32
  %sub50 = sub i32 %add43, %conv49
  %22 = tail call i32 @llvm.umin.i32(i32 %sub50, i32 %size.1)
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  %25 = trunc i64 %len.1 to i32
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmcoredd_mutex, i32 noundef 0) #12
  %dump.052.i = load ptr, ptr @vmcoredd_list, align 4
  %cmp.not53.i = icmp eq ptr %dump.052.i, @vmcoredd_list
  br i1 %cmp.not53.i, label %if.then47.cleanup78_crit_edge, label %for.body.i.preheader

if.then47.cleanup78_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup78

for.body.i.preheader:                             ; preds = %if.then47
  %conv64 = add i32 %24, %25
  %conv59 = zext i32 %19 to i64
  %sub60 = sub nsw i64 %start.1, %conv59
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %for.body.i.preheader
  %dump.058.i = phi ptr [ %dump.0.i, %if.end24.i.for.body.i_crit_edge ], [ %dump.052.i, %for.body.i.preheader ]
  %dst.addr.057.i = phi i32 [ %dst.addr.1.i, %if.end24.i.for.body.i_crit_edge ], [ %conv64, %for.body.i.preheader ]
  %start.addr.056.i = phi i64 [ %start.addr.1.i, %if.end24.i.for.body.i_crit_edge ], [ %sub60, %for.body.i.preheader ]
  %size.addr.055.i = phi i32 [ %size.addr.1.i, %if.end24.i.for.body.i_crit_edge ], [ %22, %for.body.i.preheader ]
  %offset.054.i = phi i64 [ %add27.i, %if.end24.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %size1.i = getelementptr inbounds %struct.vmcoredd_node, ptr %dump.058.i, i32 0, i32 2
  %26 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size1.i, align 4
  %conv.i = zext i32 %27 to i64
  %add.i = add i64 %offset.054.i, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %start.addr.056.i)
  %cmp2.i = icmp ugt i64 %add.i, %start.addr.056.i
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.if.end24.i_crit_edge

for.body.i.if.end24.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then.i:                                        ; preds = %for.body.i
  %sub.i = sub i64 %add.i, %start.addr.056.i
  %conv7.i = zext i32 %size.addr.055.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv7.i)
  %cmp9.i = icmp ult i64 %sub.i, %conv7.i
  %extract.t.i = trunc i64 %sub.i to i32
  %cond.off0.i = select i1 %cmp9.i, i32 %extract.t.i, i32 %size.addr.055.i
  %buf12.i = getelementptr inbounds %struct.vmcoredd_node, ptr %dump.058.i, i32 0, i32 1
  %28 = ptrtoint ptr %buf12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf12.i, align 4
  %idx.ext.i = trunc i64 %start.addr.056.i to i32
  %add.ptr13.i = getelementptr i8, ptr %29, i32 %idx.ext.i
  %idx.ext14.i = trunc i64 %offset.054.i to i32
  %idx.neg.i = sub i32 0, %idx.ext14.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr13.i, i32 %idx.neg.i
  %call.i = tail call i32 @remap_vmalloc_range_partial(ptr noundef %vma, i32 noundef %dst.addr.057.i, ptr noundef %add.ptr15.i, i32 noundef 0, i32 noundef %cond.off0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup78.thread

if.end.i:                                         ; preds = %if.then.i
  %sub17.i = sub i32 %size.addr.055.i, %cond.off0.i
  %conv18.i = zext i32 %cond.off0.i to i64
  %add19.i = add i64 %start.addr.056.i, %conv18.i
  %add20.i = add i32 %cond.off0.i, %dst.addr.057.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %tobool21.not.i = icmp eq i32 %sub17.i, 0
  br i1 %tobool21.not.i, label %if.end.i.cleanup78_crit_edge, label %if.end.i.if.end24.i_crit_edge

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.cleanup78_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup78

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %for.body.i.if.end24.i_crit_edge
  %size.addr.1.i = phi i32 [ %sub17.i, %if.end.i.if.end24.i_crit_edge ], [ %size.addr.055.i, %for.body.i.if.end24.i_crit_edge ]
  %start.addr.1.i = phi i64 [ %add19.i, %if.end.i.if.end24.i_crit_edge ], [ %start.addr.056.i, %for.body.i.if.end24.i_crit_edge ]
  %dst.addr.1.i = phi i32 [ %add20.i, %if.end.i.if.end24.i_crit_edge ], [ %dst.addr.057.i, %for.body.i.if.end24.i_crit_edge ]
  %30 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size1.i, align 4
  %conv26.i = zext i32 %31 to i64
  %add27.i = add i64 %offset.054.i, %conv26.i
  %32 = ptrtoint ptr %dump.058.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %dump.0.i = load ptr, ptr %dump.058.i, align 4
  %cmp.not.i = icmp eq ptr %dump.0.i, @vmcoredd_list
  br i1 %cmp.not.i, label %if.end24.i.cleanup78_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end24.i.cleanup78_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup78

cleanup78.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  br label %fail

cleanup78:                                        ; preds = %if.end24.i.cleanup78_crit_edge, %if.end.i.cleanup78_crit_edge, %if.then47.cleanup78_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vmcoredd_mutex) #12
  %conv58 = zext i32 %22 to i64
  %sub71 = sub i32 %size.1, %22
  %add73 = add nsw i64 %start.1, %conv58
  %add74 = add nuw nsw i64 %len.1, %conv58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub71)
  %tobool75.not = icmp eq i32 %sub71, 0
  br i1 %tobool75.not, label %cleanup78.cleanup179_crit_edge, label %cleanup78.if.end81_crit_edge

cleanup78.if.end81_crit_edge:                     ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

cleanup78.cleanup179_crit_edge:                   ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end81:                                         ; preds = %cleanup78.if.end81_crit_edge, %if.then42.if.end81_crit_edge
  %len.3 = phi i64 [ %add74, %cleanup78.if.end81_crit_edge ], [ %len.1, %if.then42.if.end81_crit_edge ]
  %start.3 = phi i64 [ %add73, %cleanup78.if.end81_crit_edge ], [ %start.1, %if.then42.if.end81_crit_edge ]
  %size.3 = phi i32 [ %sub71, %cleanup78.if.end81_crit_edge ], [ %size.1, %if.then42.if.end81_crit_edge ]
  %33 = load i32, ptr @elfcorebuf_sz, align 4
  %34 = load i32, ptr @elfnotes_sz, align 4
  %conv83 = trunc i64 %start.3 to i32
  %add82 = sub i32 %33, %conv83
  %sub84 = add i32 %add82, %34
  %35 = tail call i32 @llvm.umin.i32(i32 %sub84, i32 %size.3)
  %36 = load ptr, ptr @elfnotes_buf, align 4
  %add.ptr94 = getelementptr i8, ptr %36, i32 %conv83
  %idx.neg = sub i32 0, %33
  %add.ptr95 = getelementptr i8, ptr %add.ptr94, i32 %idx.neg
  %37 = load i32, ptr @vmcoredd_orig_sz, align 4
  %idx.neg96 = sub i32 0, %37
  %add.ptr97 = getelementptr i8, ptr %add.ptr95, i32 %idx.neg96
  %38 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vma, align 4
  %40 = trunc i64 %len.3 to i32
  %conv101 = add i32 %39, %40
  %call103 = tail call i32 @remap_vmalloc_range_partial(ptr noundef %vma, i32 noundef %conv101, ptr noundef %add.ptr97, i32 noundef 0, i32 noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end81.fail_crit_edge

if.end81.fail_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end106:                                        ; preds = %if.end81
  %conv92 = zext i32 %35 to i64
  %sub108 = sub i32 %size.3, %35
  %add110 = add nsw i64 %start.3, %conv92
  %add111 = add nsw i64 %len.3, %conv92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub108)
  %cmp112 = icmp eq i32 %sub108, 0
  br i1 %cmp112, label %if.end106.cleanup179_crit_edge, label %if.end106.if.end119_crit_edge

if.end106.if.end119_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end106.cleanup179_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end119:                                        ; preds = %if.end106.if.end119_crit_edge, %if.end37.if.end119_crit_edge
  %len.5 = phi i64 [ %len.1, %if.end37.if.end119_crit_edge ], [ %add111, %if.end106.if.end119_crit_edge ]
  %start.5 = phi i64 [ %start.1, %if.end37.if.end119_crit_edge ], [ %add110, %if.end106.if.end119_crit_edge ]
  %size.5 = phi i32 [ %size.1, %if.end37.if.end119_crit_edge ], [ %sub108, %if.end106.if.end119_crit_edge ]
  %m.0348 = load ptr, ptr @vmcore_list, align 4
  %cmp122.not349 = icmp eq ptr %m.0348, @vmcore_list
  br i1 %cmp122.not349, label %if.end119.cleanup179_crit_edge, label %for.body.lr.ph

if.end119.cleanup179_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

for.body.lr.ph:                                   ; preds = %if.end119
  %vm_page_prot154 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %m.0355 = phi ptr [ %m.0348, %for.body.lr.ph ], [ %m.0, %for.inc.for.body_crit_edge ]
  %size.6354 = phi i32 [ %size.5, %for.body.lr.ph ], [ %size.8, %for.inc.for.body_crit_edge ]
  %start.6353 = phi i64 [ %start.5, %for.body.lr.ph ], [ %start.8, %for.inc.for.body_crit_edge ]
  %len.6350 = phi i64 [ %len.5, %for.body.lr.ph ], [ %len.8, %for.inc.for.body_crit_edge ]
  %offset = getelementptr inbounds %struct.vmcore, ptr %m.0355, i32 0, i32 3
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %offset, align 8
  %size124 = getelementptr inbounds %struct.vmcore, ptr %m.0355, i32 0, i32 2
  %43 = ptrtoint ptr %size124 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size124, align 8
  %add125 = add i64 %44, %42
  call void @__sanitizer_cov_trace_cmp8(i64 %add125, i64 %start.6353)
  %cmp126 = icmp ugt i64 %add125, %start.6353
  br i1 %cmp126, label %if.then128, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then128:                                       ; preds = %for.body
  %sub132 = sub i64 %add125, %start.6353
  %conv133 = zext i32 %size.6354 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub132, i64 %conv133)
  %cmp135 = icmp ult i64 %sub132, %conv133
  %extract.t = trunc i64 %sub132 to i32
  %cond140.off0 = select i1 %cmp135, i32 %extract.t, i32 %size.6354
  %paddr143 = getelementptr inbounds %struct.vmcore, ptr %m.0355, i32 0, i32 1
  %45 = ptrtoint ptr %paddr143 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %paddr143, align 8
  %add144 = sub i64 %start.6353, %42
  %sub146 = add i64 %add144, %46
  %47 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vma, align 4
  %49 = trunc i64 %len.6350 to i32
  %conv150 = add i32 %48, %49
  %shr151 = lshr i64 %sub146, 12
  %conv152 = trunc i64 %shr151 to i32
  %50 = ptrtoint ptr %vm_page_prot154 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_page_prot154, align 4
  tail call void @down_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  %52 = load volatile ptr, ptr @vmcore_cb_list, align 4
  %cmp.i.not.i = icmp eq ptr %52, @vmcore_cb_list
  br i1 %cmp.i.not.i, label %vmcore_remap_oldmem_pfn.exit, label %if.then.i282

if.then.i282:                                     ; preds = %if.then128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %53 = load i32, ptr @zero_pfn, align 4
  %shr.i.i = lshr i32 %cond140.off0, 12
  %add.i.i = add i32 %shr.i.i, %conv152
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv152)
  %cmp66.i.i = icmp ugt i32 %add.i.i, %conv152
  br i1 %cmp66.i.i, label %if.then.i282.for.body.i.i_crit_edge, label %if.then.i282.vmcore_remap_oldmem_pfn.exit.thread_crit_edge

if.then.i282.vmcore_remap_oldmem_pfn.exit.thread_crit_edge: ; preds = %if.then.i282
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_remap_oldmem_pfn.exit.thread

if.then.i282.for.body.i.i_crit_edge:              ; preds = %if.then.i282
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i282.for.body.i.i_crit_edge
  %len.071.i.i = phi i32 [ %len.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i282.for.body.i.i_crit_edge ]
  %pos.068.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %conv152, %if.then.i282.for.body.i.i_crit_edge ]
  %pos_start.067.i.i = phi i32 [ %pos_start.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %conv152, %if.then.i282.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %54 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @vmcore_cb_rwsem, i32 0, i32 6), i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !132

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 106, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.if.end.i.i.i_crit_edge
  %.pn60.i.i.i = load ptr, ptr @vmcore_cb_list, align 4
  %cmp.not62.i.i.i = icmp eq ptr %.pn60.i.i.i, @vmcore_cb_list
  br i1 %cmp.not62.i.i.i, label %if.end.i.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn63.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn60.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %cb.064.i.i.i = getelementptr i8, ptr %.pn63.i.i.i, i32 -4
  %55 = ptrtoint ptr %cb.064.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cb.064.i.i.i, align 4
  %tobool28.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool28.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end38.i.i.i, !prof !132

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.end38.i.i.i:                                   ; preds = %for.body.i.i.i
  %call40.i.i.i = tail call zeroext i1 %56(ptr noundef %cb.064.i.i.i, i32 noundef %pos.068.i.i) #12
  br i1 %call40.i.i.i, label %if.end38.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i

if.end38.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end38.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %57 = ptrtoint ptr %.pn63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i.i.i = load ptr, ptr %.pn63.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, @vmcore_cb_list
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.inc.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.068.i.i, i32 %pos_start.067.i.i)
  %cmp2.i.i = icmp ugt i32 %pos.068.i.i, %pos_start.067.i.i
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %sub.i.i = sub i32 %pos.068.i.i, %pos_start.067.i.i
  %shl.i.i = shl i32 %sub.i.i, 12
  %add4.i.i = add i32 %len.071.i.i, %conv150
  %call5.i.i = tail call i32 @remap_oldmem_pfn_range(ptr noundef %vma, i32 noundef %add4.i.i, i32 noundef %pos_start.067.i.i, i32 noundef %shl.i.i, i32 noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge

if.then3.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_remap_oldmem_pfn.exit.thread320.loopexit

if.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add7.i.i = add i32 %shl.i.i, %len.071.i.i
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i, %if.then.i.i.if.end8.i.i_crit_edge
  %len.1.i.i = phi i32 [ %add7.i.i, %if.end.i.i ], [ %len.071.i.i, %if.then.i.i.if.end8.i.i_crit_edge ]
  %add9.i.i = add i32 %len.1.i.i, %conv150
  %call10.i.i = tail call i32 @remap_oldmem_pfn_range(ptr noundef %vma, i32 noundef %add9.i.i, i32 noundef %53, i32 noundef 4096, i32 noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end8.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge

if.end8.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_remap_oldmem_pfn.exit.thread320.loopexit

if.end13.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add14.i.i = add i32 %len.1.i.i, 4096
  %add15.i.i = add nuw i32 %pos.068.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %for.inc.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i_crit_edge
  %pos_start.1.i.i = phi i32 [ %add15.i.i, %if.end13.i.i ], [ %pos_start.067.i.i, %if.end.i.i.i.for.inc.i.i_crit_edge ], [ %pos_start.067.i.i, %for.inc.i.i.i.for.inc.i.i_crit_edge ]
  %len.2.i.i = phi i32 [ %add14.i.i, %if.end13.i.i ], [ %len.071.i.i, %if.end.i.i.i.for.inc.i.i_crit_edge ], [ %len.071.i.i, %for.inc.i.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %pos.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %pos_start.1.i.i)
  %cmp17.i.i = icmp ugt i32 %add.i.i, %pos_start.1.i.i
  br i1 %cmp17.i.i, label %if.then18.i.i, label %for.end.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge

for.end.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_remap_oldmem_pfn.exit.thread

if.then18.i.i:                                    ; preds = %for.end.i.i
  %sub19.i.i = sub i32 %add.i.i, %pos_start.1.i.i
  %shl20.i.i = shl i32 %sub19.i.i, 12
  %add21.i.i = add i32 %len.2.i.i, %conv150
  %call22.i.i = tail call i32 @remap_oldmem_pfn_range(ptr noundef %vma, i32 noundef %add21.i.i, i32 noundef %pos_start.1.i.i, i32 noundef %shl20.i.i, i32 noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then18.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge, label %vmcore_remap_oldmem_pfn.exit.thread320.loopexit383

if.then18.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vmcore_remap_oldmem_pfn.exit.thread

vmcore_remap_oldmem_pfn.exit.thread320.loopexit:  ; preds = %if.end8.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge, %if.then3.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge
  %len.3.i.i.ph = phi i32 [ %len.1.i.i, %if.end8.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge ], [ %len.071.i.i, %if.then3.i.i.vmcore_remap_oldmem_pfn.exit.thread320.loopexit_crit_edge ]
  %extract.t391 = trunc i64 %len.6350 to i32
  br label %vmcore_remap_oldmem_pfn.exit.thread320

vmcore_remap_oldmem_pfn.exit.thread320.loopexit383: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t392 = trunc i64 %len.6350 to i32
  br label %vmcore_remap_oldmem_pfn.exit.thread320

vmcore_remap_oldmem_pfn.exit.thread320:           ; preds = %vmcore_remap_oldmem_pfn.exit.thread320.loopexit383, %vmcore_remap_oldmem_pfn.exit.thread320.loopexit
  %len.6350390.off0 = phi i32 [ %extract.t391, %vmcore_remap_oldmem_pfn.exit.thread320.loopexit ], [ %extract.t392, %vmcore_remap_oldmem_pfn.exit.thread320.loopexit383 ]
  %len.3.i.i = phi i32 [ %len.3.i.i.ph, %vmcore_remap_oldmem_pfn.exit.thread320.loopexit ], [ %len.2.i.i, %vmcore_remap_oldmem_pfn.exit.thread320.loopexit383 ]
  %vm_mm.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %58 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vm_mm.i.i, align 4
  %call27.i.i = tail call i32 @do_munmap(ptr noundef %59, i32 noundef %conv150, i32 noundef %len.3.i.i, ptr noundef null) #12
  tail call void @up_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  br label %fail

vmcore_remap_oldmem_pfn.exit.thread:              ; preds = %if.then18.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge, %for.end.i.i.vmcore_remap_oldmem_pfn.exit.thread_crit_edge, %if.then.i282.vmcore_remap_oldmem_pfn.exit.thread_crit_edge
  tail call void @up_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  br label %if.end158

vmcore_remap_oldmem_pfn.exit:                     ; preds = %if.then128
  %call2.i = tail call i32 @remap_oldmem_pfn_range(ptr noundef %vma, i32 noundef %conv150, i32 noundef %conv152, i32 noundef %cond140.off0, i32 noundef %51) #12
  tail call void @up_read(ptr noundef nonnull @vmcore_cb_rwsem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool156.not = icmp eq i32 %call2.i, 0
  br i1 %tobool156.not, label %vmcore_remap_oldmem_pfn.exit.if.end158_crit_edge, label %fail.loopexit

vmcore_remap_oldmem_pfn.exit.if.end158_crit_edge: ; preds = %vmcore_remap_oldmem_pfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.end158:                                        ; preds = %vmcore_remap_oldmem_pfn.exit.if.end158_crit_edge, %vmcore_remap_oldmem_pfn.exit.thread
  %sub160 = sub i32 %size.6354, %cond140.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub160)
  %cmp164 = icmp eq i32 %sub160, 0
  br i1 %cmp164, label %if.end158.cleanup179_crit_edge, label %cleanup168

if.end158.cleanup179_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

cleanup168:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %conv142 = zext i32 %cond140.off0 to i64
  %add163 = add i64 %len.6350, %conv142
  %add162 = add i64 %start.6353, %conv142
  br label %for.inc

for.inc:                                          ; preds = %cleanup168, %for.body.for.inc_crit_edge
  %len.8 = phi i64 [ %add163, %cleanup168 ], [ %len.6350, %for.body.for.inc_crit_edge ]
  %start.8 = phi i64 [ %add162, %cleanup168 ], [ %start.6353, %for.body.for.inc_crit_edge ]
  %size.8 = phi i32 [ %sub160, %cleanup168 ], [ %size.6354, %for.body.for.inc_crit_edge ]
  %60 = ptrtoint ptr %m.0355 to i32
  call void @__asan_load4_noabort(i32 %60)
  %m.0 = load ptr, ptr %m.0355, align 4
  %cmp122.not = icmp eq ptr %m.0, @vmcore_list
  br i1 %cmp122.not, label %for.inc.cleanup179_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup179_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

fail.loopexit:                                    ; preds = %vmcore_remap_oldmem_pfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %61 = trunc i64 %len.6350 to i32
  br label %fail

fail:                                             ; preds = %fail.loopexit, %vmcore_remap_oldmem_pfn.exit.thread320, %if.end81.fail_crit_edge, %cleanup78.thread
  %len.9.off0 = phi i32 [ %25, %cleanup78.thread ], [ %40, %if.end81.fail_crit_edge ], [ %len.6350390.off0, %vmcore_remap_oldmem_pfn.exit.thread320 ], [ %61, %fail.loopexit ]
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %62 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vm_mm, align 4
  %64 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vma, align 4
  %call178 = tail call i32 @do_munmap(ptr noundef %63, i32 noundef %65, i32 noundef %len.9.off0, ptr noundef null) #12
  br label %cleanup179

cleanup179:                                       ; preds = %fail, %for.inc.cleanup179_crit_edge, %if.end158.cleanup179_crit_edge, %if.end119.cleanup179_crit_edge, %if.end106.cleanup179_crit_edge, %cleanup78.cleanup179_crit_edge, %cleanup.cleanup179_crit_edge, %if.then14.cleanup179_crit_edge, %if.end.cleanup179_crit_edge, %entry.cleanup179_crit_edge
  %retval.9 = phi i32 [ -11, %fail ], [ 0, %cleanup.cleanup179_crit_edge ], [ -22, %entry.cleanup179_crit_edge ], [ -1, %if.end.cleanup179_crit_edge ], [ -11, %if.then14.cleanup179_crit_edge ], [ 0, %if.end106.cleanup179_crit_edge ], [ 0, %cleanup78.cleanup179_crit_edge ], [ 0, %if.end119.cleanup179_crit_edge ], [ 0, %if.end158.cleanup179_crit_edge ], [ 0, %for.inc.cleanup179_crit_edge ]
  ret i32 %retval.9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_to(ptr noundef %target, ptr noundef %src, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !131

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %size, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %target, i32 %size, i32 -1226833920) #16, !srcloc !139
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %size) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %target, ptr noundef %src, i32 noundef %size) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %size, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %size, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool1.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %1 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range_partial(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmap_vmcore_fault(ptr nocapture noundef readnone %vmf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !112, !113, !115, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__param_novmcoredd, !1, !"__param_novmcoredd", i1 false, i1 false}
!1 = !{!"../fs/proc/vmcore.c", i32 59, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/proc/vmcore.c", i32 81, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @register_vmcore_cb._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @register_vmcore_cb._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_register_vmcore_cb, !10, !"__ksymtab_register_vmcore_cb", i1 false, i1 false}
!10 = !{!"../fs/proc/vmcore.c", i32 84, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/proc/vmcore.c", i32 96, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @unregister_vmcore_cb._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @unregister_vmcore_cb._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_unregister_vmcore_cb, !18, !"__ksymtab_unregister_vmcore_cb", i1 false, i1 false}
!18 = !{!"../fs/proc/vmcore.c", i32 99, i32 1}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/proc/vmcore.c", i32 1497, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vmcore_add_device_dump._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @vmcore_add_device_dump._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_vmcore_add_device_dump, !26, !"__ksymtab_vmcore_add_device_dump", i1 false, i1 false}
!26 = !{!"../fs/proc/vmcore.c", i32 1548, i32 1}
!27 = !{ptr @__initcall__kmod_proc__266_1597_vmcore_init5, !28, !"__initcall__kmod_proc__266_1597_vmcore_init5", i1 false, i1 false}
!28 = !{!"../fs/proc/vmcore.c", i32 1597, i32 1}
!29 = !{ptr @proc_vmcore, !30, !"proc_vmcore", i1 false, i1 false}
!30 = !{!"../fs/proc/vmcore.c", i32 51, i32 31}
!31 = !{ptr @vmcoredd_disabled, !32, !"vmcoredd_disabled", i1 false, i1 false}
!32 = !{!"../fs/proc/vmcore.c", i32 58, i32 13}
!33 = distinct !{null, !34, !"vmcore_opened", i1 false, i1 false}
!34 = !{!"../fs/proc/vmcore.c", i32 69, i32 13}
!35 = !{ptr @__param_str_novmcoredd, !1, !"__param_str_novmcoredd", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc/vmcore.c", i32 65, i32 8}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vmcore_cb_rwsem, !37, !"vmcore_cb_rwsem", i1 false, i1 false}
!40 = !{ptr @vmcore_cb_list, !41, !"vmcore_cb_list", i1 false, i1 false}
!41 = !{!"../fs/proc/vmcore.c", i32 67, i32 8}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/proc/vmcore.c", i32 1390, i32 33}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/proc/vmcore.c", i32 56, i32 8}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vmcoredd_mutex, !45, !"vmcoredd_mutex", i1 false, i1 false}
!48 = !{ptr @vmcoredd_list, !49, !"vmcoredd_list", i1 false, i1 false}
!49 = !{!"../fs/proc/vmcore.c", i32 55, i32 8}
!50 = !{ptr @vmcoredd_orig_sz, !51, !"vmcoredd_orig_sz", i1 false, i1 false}
!51 = !{!"../fs/proc/vmcore.c", i32 63, i32 15}
!52 = !{ptr @elfnotes_orig_sz, !53, !"elfnotes_orig_sz", i1 false, i1 false}
!53 = !{!"../fs/proc/vmcore.c", i32 46, i32 15}
!54 = !{ptr @elfnotes_sz, !55, !"elfnotes_sz", i1 false, i1 false}
!55 = !{!"../fs/proc/vmcore.c", i32 44, i32 15}
!56 = !{ptr @elfcorebuf, !57, !"elfcorebuf", i1 false, i1 false}
!57 = !{!"../fs/proc/vmcore.c", i32 39, i32 14}
!58 = !{ptr @elfcorebuf_sz, !59, !"elfcorebuf_sz", i1 false, i1 false}
!59 = !{!"../fs/proc/vmcore.c", i32 40, i32 15}
!60 = !{ptr @vmcore_size, !61, !"vmcore_size", i1 false, i1 false}
!61 = !{!"../fs/proc/vmcore.c", i32 49, i32 12}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/proc/vmcore.c", i32 1586, i32 3}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vmcore_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @vmcore_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/proc/vmcore.c", i32 1592, i32 28}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/proc/vmcore.c", i32 1346, i32 22}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/proc/vmcore.c", i32 1347, i32 3}
!73 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @parse_crash_elf_headers._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @parse_crash_elf_headers._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/proc/vmcore.c", i32 1360, i32 3}
!78 = !{ptr @parse_crash_elf_headers._entry.18, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @parse_crash_elf_headers._entry_ptr.20, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/proc/vmcore.c", i32 1248, i32 3}
!82 = !{ptr @parse_crash_elf64_headers._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @parse_crash_elf64_headers._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @elfcorebuf_sz_orig, !85, !"elfcorebuf_sz_orig", i1 false, i1 false}
!85 = !{!"../fs/proc/vmcore.c", i32 41, i32 15}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/proc/vmcore.c", i32 768, i32 5}
!88 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @update_note_header_size_elf64._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @update_note_header_size_elf64._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/proc/vmcore.c", i32 778, i32 4}
!93 = !{ptr @update_note_header_size_elf64._entry.24, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @update_note_header_size_elf64._entry_ptr.26, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @elfnotes_buf, !96, !"elfnotes_buf", i1 false, i1 false}
!96 = !{!"../fs/proc/vmcore.c", i32 43, i32 14}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/proc/vmcore.c", i32 1304, i32 3}
!99 = !{ptr @parse_crash_elf32_headers._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @parse_crash_elf32_headers._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/proc/vmcore.c", i32 959, i32 5}
!103 = !{ptr @update_note_header_size_elf32._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @update_note_header_size_elf32._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @update_note_header_size_elf32._entry.29, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../fs/proc/vmcore.c", i32 969, i32 4}
!107 = !{ptr @update_note_header_size_elf32._entry_ptr.30, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @vmcore_proc_ops, !109, !"vmcore_proc_ops", i1 false, i1 false}
!109 = !{!"../fs/proc/vmcore.c", i32 706, i32 30}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!112 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!117 = !{ptr @vmcore_mmap_ops, !118, !"vmcore_mmap_ops", i1 false, i1 false}
!118 = !{!"../fs/proc/vmcore.c", i32 474, i32 42}
!119 = !{ptr @vmcore_list, !120, !"vmcore_list", i1 false, i1 false}
!120 = !{!"../fs/proc/vmcore.c", i32 36, i32 8}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2152762333, i64 2152762358}
!134 = !{i64 5261086}
!135 = !{i64 5261283}
!136 = !{i64 2152746516}
!137 = !{i8 0, i8 2}
!138 = !{i32 0, i32 33}
!139 = !{i64 2152766212, i64 2152766237}
