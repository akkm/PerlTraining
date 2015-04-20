# test�ե�����Ǥ� use strict; use warnings; ��ɬ��
use strict;
use warnings;

# ¾�Υ⥸�塼��Ʊ�͡��ƥ����ѤΥ⥸�塼���use ���ƻȤ��ޤ�
use Test::More;

{ # use_ok
    # Test::More��use ����ȡ�export���줿�᥽�åɷ�(use_ok, ok , is , is_deeply�ʤɤ��Ȥ���褦�ˤʤ�ޤ�)
    use_ok 'Test::More';

=test
    use_ok 'Test::Most';
=cut
}

{ # ok
    # ok �Ͽ����ͤ�����å�����᥽�åɤǤ�
    ok 1;
    # ��������ǽ��ϥ�å��������Ϥ��ޤ�
    ok 'aaa', 'aaa is true' ;
    my $ok = 'aa12bb';
    ok $ok;
    ok ( 1 == 1);

=test
    ok 0;
    ok '';
    ok undef;
    ok ( 'a' eq 'b');
=cut
}

{ # is
    # is �Ϸ���ͤȴ����ͤ���Ӥ���Ƚ�ꤹ��᥽�åɤǤ�
    is 1 , 1;
    # �軰�����ǽ��ϥ�å��������Ϥ��ޤ�
    is 'a' , 'a' , ' a equal a';
    my ($return , $expect) = ( 101 , 101 );
    is $return , $expect;

=test
    is 1 , 2;
    is 'a' , 'b' , ' a not equal b';
    my $not_expect = 102;
    is $return , $not_expect;
=cut
}

{ #is_deeply
    # is_deeply�ϥϥå���ʤɤο�����¤�ޤǥ����å�����᥽�åɤǤ�
    is_deeply { 1 => 'aaa'} , { 1 => 'aaa'};

    my %return = (
        1  => 'aaa',
        2  => 'bbb',
        3  => 'ccc'
    );
    my %expect = %return;
    is_deeply \%return , \%expect;

=test
    my %not_expect = %return;
    $not_expect{3} = 'ddd';
    # value����ä��ꤹ��ȥ���Ǥ�
    is_deeply \%return , \%not_expect;
    
    my %over_expect = %return;
    $over_expect{4} = 'additional value';
    # ���ǿ����äƤ��ʤ��ȥ���Ǥ�
    is_deeply \%return , \%over_expect;

    # ����ξ��ϡ����֤ޤǰ��פ��Ƥ��ʤ��ȥ���Ǥ�
    is_deeply [qw/ 1 2 3/] , [qw/1 3 2/];
=cut
}


# �Ǹ��done_testing �Ƚ񤭤ޤ��礦
done_testing;
